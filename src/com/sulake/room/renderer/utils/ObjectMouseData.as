package com.sulake.room.renderer.utils
{
   public class ObjectMouseData
   {
       
      
      private var var_1566:String = "";
      
      private var var_155:String = "";
      
      public function ObjectMouseData()
      {
         super();
      }
      
      public function set spriteTag(param1:String) : void
      {
         var_1566 = param1;
      }
      
      public function set objectId(param1:String) : void
      {
         var_155 = param1;
      }
      
      public function get spriteTag() : String
      {
         return var_1566;
      }
      
      public function get objectId() : String
      {
         return var_155;
      }
   }
}
