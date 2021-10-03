package com.sulake.habbo.widget.events
{
   public class RoomWidgetStickieDataUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_497:String = "RWSDUE_STICKIE_DATA";
       
      
      private var var_191:String;
      
      private var var_657:String;
      
      private var var_1417:String;
      
      private var var_155:int = -1;
      
      private var _controller:Boolean;
      
      public function RoomWidgetStickieDataUpdateEvent(param1:String, param2:int, param3:String, param4:String, param5:String, param6:Boolean, param7:Boolean = false, param8:Boolean = false)
      {
         super(param1,param7,param8);
         var_155 = param2;
         var_1417 = param3;
         var_191 = param4;
         var_657 = param5;
         _controller = param6;
      }
      
      public function get objectType() : String
      {
         return var_1417;
      }
      
      public function get colorHex() : String
      {
         return var_657;
      }
      
      public function get text() : String
      {
         return var_191;
      }
      
      public function get objectId() : int
      {
         return var_155;
      }
      
      public function get controller() : Boolean
      {
         return _controller;
      }
   }
}
