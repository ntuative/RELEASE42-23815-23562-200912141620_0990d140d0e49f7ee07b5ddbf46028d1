package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDrawableItem;
   import com.sulake.habbo.widget.memenu.IWidgetAvatarEffect;
   import flash.display.BitmapData;
   
   public class Effect implements IWidgetAvatarEffect, IThumbListDrawableItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1691:Date;
      
      private var var_1116:Boolean = false;
      
      private var _type:int;
      
      private var var_354:BitmapData;
      
      private var var_275:Boolean = false;
      
      private var var_1055:int;
      
      private var var_518:int = 1;
      
      private var var_922:int;
      
      public function Effect()
      {
         super();
      }
      
      public function get icon() : BitmapData
      {
         return var_354;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function setOneEffectExpired() : void
      {
         --var_518;
         if(var_518 < 0)
         {
            var_518 = 0;
         }
         var_922 = var_1055;
         var_275 = false;
         var_1116 = false;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function set secondsLeft(param1:int) : void
      {
         var_922 = param1;
      }
      
      public function get isActive() : Boolean
      {
         return var_275;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         var_354 = param1;
      }
      
      public function get duration() : int
      {
         return var_1055;
      }
      
      public function get isInUse() : Boolean
      {
         return var_1116;
      }
      
      public function get effectsInInventory() : int
      {
         return var_518;
      }
      
      public function get iconImage() : BitmapData
      {
         return var_354;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function set isActive(param1:Boolean) : void
      {
         if(param1 && !var_275)
         {
            var_1691 = new Date();
         }
         var_275 = param1;
      }
      
      public function set effectsInInventory(param1:int) : void
      {
         var_518 = param1;
      }
      
      public function get secondsLeft() : int
      {
         var _loc1_:int = 0;
         if(var_275)
         {
            _loc1_ = var_922 - (new Date().valueOf() - var_1691.valueOf()) / 1000;
            _loc1_ = Math.floor(_loc1_);
            if(_loc1_ < 0)
            {
               _loc1_ = 0;
            }
            return _loc1_;
         }
         return var_922;
      }
      
      public function set isInUse(param1:Boolean) : void
      {
         var_1116 = param1;
      }
      
      public function set duration(param1:int) : void
      {
         var_1055 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
