package com.sulake.core.window.graphics
{
   import com.sulake.core.runtime.IDisposable;
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowStyle;
   import com.sulake.core.window.graphics.renderer.ISkinRenderer;
   import flash.display.BitmapData;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class WindowRendererItem implements IDisposable
   {
      
      private static const const_484:uint = 0;
      
      private static const const_742:uint = 1;
      
      private static const const_741:uint = 2;
       
      
      private var var_620:ISkinContainer;
      
      private var _drawBufferAllocator:DrawBufferAllocator;
      
      private var _disposed:Boolean;
      
      private var var_217:Rectangle;
      
      private var var_218:Boolean;
      
      private var var_95:BitmapData;
      
      private var var_873:Matrix;
      
      private var var_131:WindowRenderer;
      
      private var var_932:uint;
      
      private var _colorTransform:ColorTransform;
      
      private var var_621:uint;
      
      public function WindowRendererItem(param1:WindowRenderer, param2:DrawBufferAllocator, param3:ISkinContainer)
      {
         super();
         _disposed = false;
         var_131 = param1;
         var_620 = param3;
         _drawBufferAllocator = param2;
         var_932 = 4294967295;
         var_621 = 0;
         _colorTransform = new ColorTransform();
         var_873 = new Matrix();
         var_217 = new Rectangle();
      }
      
      public function get buffer() : BitmapData
      {
         return var_95;
      }
      
      public function invalidate(param1:IWindow, param2:Rectangle, param3:uint) : Boolean
      {
         var _loc4_:Boolean = false;
         switch(param3)
         {
            case WindowRedrawFlag.const_71:
               var_218 = true;
               _loc4_ = true;
               break;
            case WindowRedrawFlag.RESIZE:
               var_218 = true;
               _loc4_ = true;
               break;
            case WindowRedrawFlag.const_379:
               if(param1.testParamFlag(WindowParam.const_33))
               {
                  _loc4_ = true;
               }
               else
               {
                  IGraphicContextHost(param1).getGraphicContext(true).setDrawRegion(param1.rectangle,false);
               }
               break;
            case WindowRedrawFlag.const_921:
               var_621 = var_620.getTheActualState(param1.type,param1.style,param1.state);
               if(var_621 != var_932)
               {
                  var_218 = true;
                  _loc4_ = true;
               }
               break;
            case WindowRedrawFlag.const_885:
               if(param1.testParamFlag(WindowParam.const_33))
               {
                  var_218 = true;
                  _loc4_ = true;
               }
               else
               {
                  IGraphicContextHost(param1).getGraphicContext(true).blend = param1.blend;
               }
               break;
            case WindowRedrawFlag.const_225:
               _loc4_ = true;
         }
         if(_loc4_)
         {
            var_217.left = Math.min(var_217.left,param2.left);
            var_217.top = Math.min(var_217.top,param2.top);
            var_217.right = Math.max(var_217.right,param2.right);
            var_217.bottom = Math.max(var_217.bottom,param2.bottom);
         }
         return _loc4_;
      }
      
      public function testForStateChange(param1:IWindow) : Boolean
      {
         return var_620.getTheActualState(param1.type,param1.style,param1.state) != var_932;
      }
      
      public function get dirty() : Rectangle
      {
         return var_217;
      }
      
      public function render(param1:IWindow, param2:Point, param3:Rectangle) : Boolean
      {
         var _loc4_:* = null;
         var _loc10_:* = 0;
         var _loc5_:uint = !!param1.background ? uint(const_741) : uint(const_484);
         var _loc6_:ISkinRenderer = resolveSkinRenderer(param1);
         if(_loc6_ != null)
         {
            _loc5_ = !!_loc6_.isStateDrawable(var_621) ? uint(const_742) : uint(_loc5_);
         }
         var _loc7_:int = Math.max(param1.width,1);
         var _loc8_:int = Math.max(param1.height,1);
         if(_loc5_ != const_484)
         {
            if(var_95 == null)
            {
               var_95 = _drawBufferAllocator.allocate(_loc7_,_loc8_,true,param1.color);
               var_218 = true;
            }
            else if(var_95.width != _loc7_ || var_95.height != _loc8_)
            {
               _drawBufferAllocator.free(var_95);
               var_95 = _drawBufferAllocator.allocate(_loc7_,_loc8_,true,param1.color);
               var_218 = true;
            }
         }
         var _loc9_:IGraphicContext = IGraphicContextHost(param1).getGraphicContext(false);
         if(_loc9_)
         {
            _loc9_.setDrawRegion(param1.rectangle,!param1.testParamFlag(WindowParam.const_33));
         }
         if(_loc5_ != const_484)
         {
            var_932 = var_621;
            _loc4_ = param1.fetchDrawBuffer() as BitmapData;
            if(_loc4_ != null)
            {
               _loc4_.lock();
               if(_loc5_ == const_742)
               {
                  if(!param1.testParamFlag(WindowParam.const_33))
                  {
                     _loc4_.fillRect(param3,0);
                  }
                  if(var_218)
                  {
                     var_218 = false;
                     var_95.fillRect(var_95.rect,param1.color);
                     _loc6_.draw(param1,var_95,var_95.rect,var_621,false);
                     if(!param1.background)
                     {
                        _loc10_ = uint(param1.color);
                        if((_loc10_ & 16777215) < 16777215)
                        {
                           var_95.colorTransform(_loc4_.rect,new ColorTransform(((_loc10_ & 16711680) >> 16) / 255 * 1,((_loc10_ & 65280) >> 8) / 255 * 1,(_loc10_ & 255) / 255 * 1));
                        }
                     }
                  }
                  if(param1.blend < 1 && param1.testParamFlag(WindowParam.const_33))
                  {
                     var_873.tx = param2.x;
                     var_873.ty = param2.y;
                     _colorTransform.alphaMultiplier = param1.blend;
                     param3.offset(param2.x,param2.y);
                     _loc4_.draw(var_95,var_873,_colorTransform,null,param3,false);
                     param3.offset(-param2.x,-param2.y);
                  }
                  else
                  {
                     _loc4_.copyPixels(var_95,param3,param2,null,null,true);
                  }
               }
               else if(_loc5_ == const_741)
               {
                  if(param1.testParamFlag(WindowParam.const_33))
                  {
                     var_95.fillRect(var_95.rect,param1.color);
                     _loc4_.copyPixels(var_95,param3,param2,null,null,true);
                  }
                  else
                  {
                     _loc4_.fillRect(new Rectangle(param2.x,param2.y,param3.width,param3.height),param1.color);
                     _loc9_.blend = param1.blend;
                  }
               }
               _loc4_.unlock();
            }
            var_217.left = int.MAX_VALUE;
            var_217.top = int.MAX_VALUE;
            var_217.right = int.MIN_VALUE;
            var_217.bottom = int.MIN_VALUE;
         }
         return true;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(!_disposed)
         {
            _disposed = true;
            var_131 = null;
            var_620 = null;
            if(var_95 != null)
            {
               _drawBufferAllocator.free(var_95);
               var_95 = null;
            }
         }
      }
      
      private function drawRect(param1:BitmapData, param2:Rectangle, param3:uint) : void
      {
         var _loc4_:int = 0;
         _loc4_ = param2.left;
         while(_loc4_ < param2.right)
         {
            param1.setPixel32(_loc4_,param2.top,param3);
            param1.setPixel32(_loc4_,param2.bottom - 1,param3);
            _loc4_++;
         }
         _loc4_ = param2.top;
         while(_loc4_ < param2.bottom)
         {
            param1.setPixel32(param2.left,_loc4_,param3);
            param1.setPixel32(param2.right - 1,_loc4_,param3);
            _loc4_++;
         }
      }
      
      private function resolveSkinRenderer(param1:IWindow) : ISkinRenderer
      {
         var _loc2_:ISkinRenderer = var_620.getSkinRendererByType(param1.type,param1.style);
         if(_loc2_ == null)
         {
            if(param1.style != WindowStyle.const_814)
            {
               _loc2_ = var_620.getSkinRendererByType(param1.type,WindowStyle.const_814);
            }
         }
         return _loc2_;
      }
   }
}
