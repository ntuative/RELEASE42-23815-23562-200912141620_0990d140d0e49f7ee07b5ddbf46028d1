package com.sulake.habbo.room.utils
{
   public class PublicRoomWorldData
   {
       
      
      private var var_2006:Number = 1;
      
      private var var_198:Number = 1;
      
      private var var_1627:String = "";
      
      public function PublicRoomWorldData(param1:String, param2:Number, param3:Number)
      {
         super();
         var_1627 = param1;
         var_198 = param2;
         var_2006 = param3;
      }
      
      public function get scale() : Number
      {
         return var_198;
      }
      
      public function get heightScale() : Number
      {
         return var_2006;
      }
   }
}
