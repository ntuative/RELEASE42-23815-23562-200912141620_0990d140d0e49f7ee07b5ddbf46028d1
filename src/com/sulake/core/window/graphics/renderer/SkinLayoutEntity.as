package com.sulake.core.window.graphics.renderer
{
   import flash.geom.Rectangle;
   
   public class SkinLayoutEntity implements ISkinLayoutEntity
   {
      
      public static const const_248:uint = 1;
      
      public static const const_412:uint = 0;
      
      public static const const_882:uint = 8;
      
      public static const const_239:uint = 4;
      
      public static const const_390:uint = 2;
       
      
      private var var_388:uint;
      
      private var var_1750:uint;
      
      private var _color:uint;
      
      private var _name:String;
      
      private var var_1751:uint;
      
      private var var_102:Rectangle;
      
      private var var_582:Array;
      
      private var _id:uint;
      
      public function SkinLayoutEntity(param1:uint, param2:String, param3:Rectangle, param4:uint = 4.294967295E9, param5:uint = 100, param6:uint = 0, param7:uint = 0)
      {
         super();
         _id = param1;
         _name = param2;
         var_102 = param3;
         _color = param4;
         var_388 = param5;
         var_1750 = param6;
         var_1751 = param7;
         var_582 = new Array();
      }
      
      public function get scaleH() : uint
      {
         return var_1750;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get blend() : uint
      {
         return var_388;
      }
      
      public function get scaleV() : uint
      {
         return var_1751;
      }
      
      public function get tags() : Array
      {
         return var_582;
      }
      
      public function get id() : uint
      {
         return _id;
      }
      
      public function dispose() : void
      {
         var_102 = null;
         var_582 = null;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get region() : Rectangle
      {
         return var_102;
      }
   }
}
