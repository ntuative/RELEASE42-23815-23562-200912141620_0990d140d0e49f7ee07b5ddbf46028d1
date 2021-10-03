package com.sulake.habbo.inventory.items
{
   public class WallItem implements IItem
   {
       
      
      protected var _id:int;
      
      protected var var_1302:String;
      
      protected var var_2172:Boolean;
      
      protected var var_2171:int;
      
      protected var _type:int;
      
      protected var _category:int;
      
      protected var var_2109:Boolean;
      
      protected var var_2168:Boolean;
      
      protected var var_2173:Boolean;
      
      protected var var_2170:Boolean;
      
      public function WallItem(param1:int, param2:int, param3:int, param4:int, param5:Boolean, param6:Boolean, param7:Boolean, param8:Boolean, param9:String)
      {
         super();
         _id = param1;
         _type = param2;
         var_2171 = param3;
         _category = param4;
         var_2109 = param5;
         var_2170 = param6;
         var_2172 = param7;
         var_2173 = param8;
         var_1302 = param9;
      }
      
      public function get category() : int
      {
         return _category;
      }
      
      public function set extras(param1:String) : void
      {
         var_1302 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get locked() : Boolean
      {
         return var_2168;
      }
      
      public function get tradeable() : Boolean
      {
         return var_2170;
      }
      
      public function get sellable() : Boolean
      {
         return var_2173;
      }
      
      public function get ref() : int
      {
         return var_2171;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get extras() : String
      {
         return var_1302;
      }
      
      public function get recyclable() : Boolean
      {
         return var_2172;
      }
      
      public function get groupable() : Boolean
      {
         return var_2109;
      }
      
      public function set locked(param1:Boolean) : void
      {
         var_2168 = param1;
      }
   }
}
