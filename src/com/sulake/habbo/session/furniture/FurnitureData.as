package com.sulake.habbo.session.furniture
{
   public class FurnitureData implements IFurnitureData
   {
      
      public static const const_1476:String = "e";
      
      public static const const_1529:String = "i";
      
      public static const const_1491:String = "s";
       
      
      private var _id:int;
      
      private var _title:String;
      
      private var _type:String;
      
      private var var_1833:int;
      
      private var var_1266:Array;
      
      private var var_1837:int;
      
      private var var_1835:int;
      
      private var var_1834:int;
      
      private var _name:String;
      
      private var var_1836:int;
      
      private var var_1066:String;
      
      public function FurnitureData(param1:String, param2:int, param3:String, param4:int, param5:int, param6:int, param7:int, param8:int, param9:Array, param10:String, param11:String)
      {
         super();
         _type = param1;
         _id = param2;
         _name = param3;
         var_1833 = param4;
         var_1836 = param5;
         var_1837 = param6;
         var_1835 = param7;
         var_1834 = param8;
         var_1266 = param9;
         _title = param10;
         var_1066 = param11;
      }
      
      public function get tileSizeY() : int
      {
         return var_1835;
      }
      
      public function get tileSizeZ() : int
      {
         return var_1834;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get title() : String
      {
         return _title;
      }
      
      public function get revision() : int
      {
         return var_1836;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get colourIndex() : int
      {
         return var_1833;
      }
      
      public function get tileSizeX() : int
      {
         return var_1837;
      }
      
      public function get colours() : Array
      {
         return var_1266;
      }
      
      public function get description() : String
      {
         return var_1066;
      }
   }
}
