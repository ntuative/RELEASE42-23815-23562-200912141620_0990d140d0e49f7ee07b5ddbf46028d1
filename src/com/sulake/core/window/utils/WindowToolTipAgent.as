package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.components.IInteractiveWindow;
   import com.sulake.core.window.components.IToolTipWindow;
   import com.sulake.core.window.enum.WindowParam;
   import com.sulake.core.window.enum.WindowType;
   import flash.display.DisplayObject;
   import flash.events.TimerEvent;
   import flash.geom.Point;
   import flash.utils.Timer;
   
   public class WindowToolTipAgent extends WindowMouseOperator implements IWindowToolTipAgentService
   {
       
      
      protected var var_308:Timer;
      
      protected var var_867:String;
      
      protected var var_866:uint;
      
      protected var var_1040:Point;
      
      protected var var_240:IToolTipWindow;
      
      protected var var_1041:Point;
      
      public function WindowToolTipAgent(param1:DisplayObject)
      {
         var_1040 = new Point();
         var_1041 = new Point(20,20);
         var_866 = 500;
         super(param1);
      }
      
      override public function end(param1:IWindow) : IWindow
      {
         if(var_308 != null)
         {
            var_308.stop();
            var_308.removeEventListener(TimerEvent.TIMER,showToolTip);
            var_308 = null;
         }
         hideToolTip();
         return super.end(param1);
      }
      
      override public function operate(param1:int, param2:int) : void
      {
         if(_window && true)
         {
            _mouse.x = param1;
            _mouse.y = param2;
            getMousePositionRelativeTo(_window,_mouse,var_1040);
            if(var_240 != null && true)
            {
               var_240.x = param1 + var_1041.x;
               var_240.y = param2 + var_1041.y;
            }
         }
      }
      
      protected function showToolTip(param1:TimerEvent) : void
      {
         var _loc2_:* = null;
         if(var_308 != null)
         {
            var_308.reset();
         }
         if(_window && true)
         {
            if(var_240 == null || false)
            {
               var_240 = _window.context.create("undefined::ToolTip",var_867,WindowType.WINDOW_TYPE_TOOLTIP,_window.style,0 | 0,null,null,null,0,null,null) as IToolTipWindow;
            }
            _loc2_ = new Point();
            _window.getGlobalPosition(_loc2_);
            var_240.x = _loc2_.x + var_1040.x + var_1041.x;
            var_240.y = _loc2_.y + var_1040.y + var_1041.y;
         }
      }
      
      override public function begin(param1:IWindow, param2:uint = 0) : IWindow
      {
         if(param1 && !param1.disposed)
         {
            if(param1 is IInteractiveWindow)
            {
               var_867 = IInteractiveWindow(param1).toolTipCaption;
               var_866 = IInteractiveWindow(param1).toolTipDelay;
            }
            else
            {
               var_867 = param1.caption;
               var_866 = 500;
            }
            _mouse.x = var_122.mouseX;
            _mouse.y = var_122.mouseY;
            getMousePositionRelativeTo(param1,_mouse,var_1040);
            if(var_867 != null && var_867 != "")
            {
               if(var_308 == null)
               {
                  var_308 = new Timer(var_866,1);
                  var_308.addEventListener(TimerEvent.TIMER,showToolTip);
               }
               var_308.reset();
               var_308.start();
            }
         }
         return super.begin(param1,param2);
      }
      
      protected function hideToolTip() : void
      {
         if(var_240 != null && true)
         {
            var_240.destroy();
            var_240 = null;
         }
      }
   }
}
