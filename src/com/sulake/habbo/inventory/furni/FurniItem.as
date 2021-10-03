package com.sulake.habbo.inventory.furni
{
   import flash.display.BitmapData;
   
   public class FurniItem
   {
       
      
      private var _isSelected:Boolean = false;
      
      private var var_1771:int;
      
      private var var_1770:Boolean;
      
      private var var_1754:int;
      
      private var var_1774:String;
      
      private var var_2153:Boolean = false;
      
      private var var_1767:int;
      
      private var var_419:int;
      
      private var var_989:String;
      
      private var var_1768:String;
      
      private var _image:BitmapData;
      
      private var _objId:int;
      
      private var var_1263:int;
      
      private var var_1769:Boolean;
      
      private var var_2152:int;
      
      public function FurniItem(param1:int, param2:String, param3:int, param4:int, param5:String, param6:Boolean, param7:Boolean, param8:int, param9:String, param10:int)
      {
         super();
         var_1771 = param1;
         var_989 = param2;
         _objId = param3;
         var_1263 = param4;
         var_1774 = param5;
         var_1770 = param6;
         var_1769 = param7;
         var_1767 = param8;
         var_1768 = param9;
         var_1754 = param10;
         var_419 = -1;
      }
      
      public function get songId() : int
      {
         return var_1754;
      }
      
      public function get iconCallbackId() : int
      {
         return var_419;
      }
      
      public function get expiryTime() : int
      {
         return var_1767;
      }
      
      public function set prevCallbackId(param1:int) : void
      {
         var_2152 = param1;
      }
      
      public function set isLocked(param1:Boolean) : void
      {
         var_2153 = param1;
      }
      
      public function set iconCallbackId(param1:int) : void
      {
         var_419 = param1;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1769;
      }
      
      public function get slotId() : String
      {
         return var_1768;
      }
      
      public function get classId() : int
      {
         return var_1263;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1770;
      }
      
      public function get stuffData() : String
      {
         return var_1774;
      }
      
      public function set iconImage(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set isSelected(param1:Boolean) : void
      {
         _isSelected = param1;
      }
      
      public function get stripId() : int
      {
         return var_1771;
      }
      
      public function get isLocked() : Boolean
      {
         return var_2153;
      }
      
      public function get prevCallbackId() : int
      {
         return var_2152;
      }
      
      public function get iconImage() : BitmapData
      {
         return _image;
      }
      
      public function get isSelected() : Boolean
      {
         return _isSelected;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get itemType() : String
      {
         return var_989;
      }
   }
}
