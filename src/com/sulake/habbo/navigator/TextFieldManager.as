package com.sulake.habbo.navigator
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowKeyboardEvent;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.ui.Keyboard;
   
   public class TextFieldManager
   {
       
      
      private var var_2210:Boolean;
      
      private var var_1367:int;
      
      private var var_2211:String = "";
      
      private var var_75:ITextFieldWindow;
      
      private var var_2212:uint;
      
      private var _orgTextBackgroundColor:uint;
      
      private var _navigator:HabboNavigator;
      
      private var var_1206:String = "";
      
      private var var_156:IWindowContainer;
      
      private var var_281:Boolean;
      
      private var var_1126:Function;
      
      public function TextFieldManager(param1:HabboNavigator, param2:ITextFieldWindow, param3:int = 1000, param4:Function = null, param5:String = null)
      {
         super();
         _navigator = param1;
         var_75 = param2;
         var_1367 = param3;
         var_1126 = param4;
         if(param5 != null)
         {
            var_281 = true;
            var_1206 = param5;
            var_75.text = param5;
         }
         Util.setProcDirectly(var_75,onInputClick);
         var_75.addEventListener(WindowKeyboardEvent.const_109,checkEnterPress);
         var_75.addEventListener(WindowEvent.const_204,checkMaxLen);
         this.var_2210 = var_75.textBackground;
         this._orgTextBackgroundColor = var_75.textBackgroundColor;
         this.var_2212 = var_75.textColor;
      }
      
      private function checkEnterPress(param1:Event) : void
      {
         var _loc2_:IWindow = IWindow(param1.target);
         if(!(param1 is WindowKeyboardEvent))
         {
            return;
         }
         var _loc3_:WindowKeyboardEvent = WindowKeyboardEvent(param1);
         if(_loc3_.charCode == Keyboard.ENTER)
         {
            if(var_1126 != null)
            {
               var_1126();
            }
         }
      }
      
      public function goBackToInitialState() : void
      {
         clearErrors();
         if(var_1206 != null)
         {
            var_75.text = var_1206;
            var_281 = true;
         }
         else
         {
            var_75.text = "";
            var_281 = false;
         }
      }
      
      public function get input() : ITextFieldWindow
      {
         return var_75;
      }
      
      public function method_4() : void
      {
         var_75.textBackground = this.var_2210;
         var_75.textBackgroundColor = this._orgTextBackgroundColor;
         var_75.textColor = this.var_2212;
      }
      
      private function onInputClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowEvent.const_286)
         {
            return;
         }
         if(!var_281)
         {
            return;
         }
         var_75.text = var_2211;
         var_281 = false;
         this.method_4();
      }
      
      public function clearErrors() : void
      {
         this.method_4();
         if(this.var_156 != null)
         {
            var_156.visible = false;
         }
      }
      
      public function displayError(param1:String) : void
      {
         var_75.textBackground = true;
         var_75.textBackgroundColor = 4294021019;
         var_75.textColor = 4278190080;
         if(this.var_156 == null)
         {
            this.var_156 = IWindowContainer(_navigator.getXmlWindow("nav_error_popup"));
            _navigator.refreshButton(this.var_156,"popup_arrow_down",true,null,0);
            IWindowContainer(var_75.parent).addChild(this.var_156);
         }
         var _loc2_:ITextWindow = ITextWindow(this.var_156.findChildByName("error_text"));
         _loc2_.text = param1;
         _loc2_.width = _loc2_.textWidth + 5;
         var_156.findChildByName("border").width = _loc2_.width + 15;
         var_156.width = _loc2_.width + 15;
         var _loc3_:Point = new Point();
         var_75.getLocalPosition(_loc3_);
         this.var_156.x = _loc3_.x;
         this.var_156.y = _loc3_.y - this.var_156.height + 3;
         var _loc4_:IWindow = var_156.findChildByName("popup_arrow_down");
         _loc4_.x = this.var_156.width / 2 - _loc4_.width / 2;
         var_156.x += (0 - 0) / 2;
         this.var_156.visible = true;
      }
      
      public function getText() : String
      {
         if(var_281)
         {
            return var_2211;
         }
         return var_75.text;
      }
      
      private function isInputValid() : Boolean
      {
         return !var_281 && Util.trim(getText()).length > 2;
      }
      
      public function setText(param1:String) : void
      {
         var_281 = false;
         var_75.text = param1;
      }
      
      public function checkMandatory(param1:String) : Boolean
      {
         if(!isInputValid())
         {
            displayError(param1);
            return false;
         }
         method_4();
         return true;
      }
      
      private function checkMaxLen(param1:Event) : void
      {
         var _loc2_:String = "null";
         if(_loc2_.length > var_1367)
         {
            var_75.text = _loc2_.substring(0,var_1367);
         }
      }
   }
}
