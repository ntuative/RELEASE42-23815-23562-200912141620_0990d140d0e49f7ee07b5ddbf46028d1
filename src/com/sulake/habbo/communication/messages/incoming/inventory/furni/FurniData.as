package com.sulake.habbo.communication.messages.incoming.inventory.furni
{
   public class FurniData
   {
       
      
      private var var_1774:String;
      
      private var var_989:String;
      
      private var var_1772:Boolean;
      
      private var var_1771:int;
      
      private var var_1773:Boolean;
      
      private var var_1768:String = "";
      
      private var var_1770:Boolean;
      
      private var _category:int;
      
      private var _objId:int;
      
      private var var_1263:int;
      
      private var var_1769:Boolean;
      
      private var var_1754:int = -1;
      
      private var var_1767:int;
      
      public function FurniData(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:Boolean, param8:Boolean, param9:Boolean, param10:Boolean, param11:int)
      {
         super();
         var_1771 = param1;
         var_989 = param2;
         _objId = param3;
         var_1263 = param4;
         _category = param5;
         var_1774 = param6;
         var_1772 = param7;
         var_1770 = param8;
         var_1769 = param9;
         var_1773 = param10;
         var_1767 = param11;
      }
      
      public function get slotId() : String
      {
         return var_1768;
      }
      
      public function get classId() : int
      {
         return var_1263;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function get isSellable() : Boolean
      {
         return var_1773;
      }
      
      public function get method_5() : Boolean
      {
         return var_1772;
      }
      
      public function get stripId() : int
      {
         return var_1771;
      }
      
      public function get stuffData() : String
      {
         return var_1774;
      }
      
      public function get songId() : int
      {
         return var_1754;
      }
      
      public function setSongData(param1:String, param2:int) : void
      {
         var_1768 = param1;
         var_1754 = param2;
      }
      
      public function get expiryTime() : int
      {
         return var_1767;
      }
      
      public function get itemType() : String
      {
         return var_989;
      }
      
      public function get objId() : int
      {
         return _objId;
      }
      
      public function get isTradeable() : Boolean
      {
         return var_1769;
      }
      
      public function get isRecyclable() : Boolean
      {
         return var_1770;
      }
   }
}
