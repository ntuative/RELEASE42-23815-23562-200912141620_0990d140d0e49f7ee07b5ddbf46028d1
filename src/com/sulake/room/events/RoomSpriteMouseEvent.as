package com.sulake.room.events
{
   public class RoomSpriteMouseEvent
   {
       
      
      private var var_1949:Boolean = false;
      
      private var var_1948:Boolean = false;
      
      private var var_1566:String = "";
      
      private var _type:String = "";
      
      private var var_1943:Boolean = false;
      
      private var var_1699:Number = 0;
      
      private var var_1944:Number = 0;
      
      private var var_1947:Number = 0;
      
      private var var_1946:String = "";
      
      private var var_1698:Number = 0;
      
      private var var_1945:Boolean = false;
      
      public function RoomSpriteMouseEvent(param1:String, param2:String, param3:String, param4:Number, param5:Number, param6:Number = 0, param7:Number = 0, param8:Boolean = false, param9:Boolean = false, param10:Boolean = false, param11:Boolean = false)
      {
         super();
         _type = param1;
         var_1946 = param2;
         var_1566 = param3;
         var_1944 = param4;
         var_1947 = param5;
         var_1699 = param6;
         var_1698 = param7;
         var_1945 = param8;
         var_1948 = param9;
         var_1943 = param10;
         var_1949 = param11;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1945;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1949;
      }
      
      public function get localX() : Number
      {
         return var_1699;
      }
      
      public function get localY() : Number
      {
         return var_1698;
      }
      
      public function get canvasId() : String
      {
         return var_1946;
      }
      
      public function get altKey() : Boolean
      {
         return var_1948;
      }
      
      public function get spriteTag() : String
      {
         return var_1566;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get screenX() : Number
      {
         return var_1944;
      }
      
      public function get screenY() : Number
      {
         return var_1947;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1943;
      }
   }
}
