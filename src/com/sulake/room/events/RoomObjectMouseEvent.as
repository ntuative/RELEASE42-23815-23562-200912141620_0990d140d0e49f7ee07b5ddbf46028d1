package com.sulake.room.events
{
   public class RoomObjectMouseEvent extends RoomObjectEvent
   {
      
      public static const const_1423:String = "ROE_MOUSE_LEAVE";
      
      public static const const_1560:String = "ROE_MOUSE_ENTER";
      
      public static const const_369:String = "ROE_MOUSE_MOVE";
      
      public static const const_1523:String = "ROE_MOUSE_DOUBLE_CLICK";
      
      public static const const_211:String = "ROE_MOUSE_CLICK";
      
      public static const const_348:String = "ROE_MOUSE_DOWN";
       
      
      private var var_1943:Boolean;
      
      private var var_1949:Boolean;
      
      private var var_1948:Boolean;
      
      private var var_1945:Boolean;
      
      public function RoomObjectMouseEvent(param1:String, param2:int, param3:String, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false, param9:Boolean = false)
      {
         super(param1,param2,param3,param8,param9);
         var_1948 = param4;
         var_1945 = param5;
         var_1943 = param6;
         var_1949 = param7;
      }
      
      public function get buttonDown() : Boolean
      {
         return var_1949;
      }
      
      public function get altKey() : Boolean
      {
         return var_1948;
      }
      
      public function get ctrlKey() : Boolean
      {
         return var_1945;
      }
      
      public function get shiftKey() : Boolean
      {
         return var_1943;
      }
   }
}
