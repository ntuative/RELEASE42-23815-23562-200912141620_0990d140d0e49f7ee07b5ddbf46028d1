package com.sulake.habbo.communication.messages.incoming.inventory.trading
{
   public class ItemDataStructure
   {
       
      
      private var var_2116:int;
      
      private var var_2112:int;
      
      private var var_989:String;
      
      private var var_1829:int;
      
      private var var_2110:String;
      
      private var var_2117:int;
      
      private var var_2115:int;
      
      private var _category:int;
      
      private var var_2113:int;
      
      private var var_2114:int;
      
      private var var_2111:int;
      
      private var var_2109:Boolean;
      
      public function ItemDataStructure(param1:int, param2:String, param3:int, param4:int, param5:int, param6:String, param7:int, param8:int, param9:int, param10:int, param11:Boolean, param12:int)
      {
         super();
         var_1829 = param1;
         var_989 = param2;
         var_2112 = param3;
         var_2111 = param4;
         _category = param5;
         var_2110 = param6;
         var_2117 = param7;
         var_2116 = param8;
         var_2114 = param9;
         var_2115 = param10;
         var_2109 = param11;
         var_2113 = param12;
      }
      
      public function get itemTypeID() : int
      {
         return var_2111;
      }
      
      public function get groupable() : Boolean
      {
         return var_2109;
      }
      
      public function get creationMonth() : int
      {
         return var_2114;
      }
      
      public function get roomItemID() : int
      {
         return var_2112;
      }
      
      public function get itemType() : String
      {
         return var_989;
      }
      
      public function get itemID() : int
      {
         return var_1829;
      }
      
      public function get itemSpecificData() : String
      {
         return var_2110;
      }
      
      public function get songID() : int
      {
         return var_2113;
      }
      
      public function get timeToExpiration() : int
      {
         return var_2117;
      }
      
      public function get creationYear() : int
      {
         return var_2115;
      }
      
      public function get creationDay() : int
      {
         return var_2116;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
