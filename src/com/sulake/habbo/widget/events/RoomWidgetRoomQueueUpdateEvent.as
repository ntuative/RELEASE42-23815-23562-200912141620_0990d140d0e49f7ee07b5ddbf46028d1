package com.sulake.habbo.widget.events
{
   public class RoomWidgetRoomQueueUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_371:String = "RWRQUE_SPECTATOR_QUEUE_STATUS";
      
      public static const const_316:String = "RWRQUE_VISITOR_QUEUE_STATUS";
       
      
      private var var_760:int;
      
      private var var_275:Boolean;
      
      private var var_1654:Boolean;
      
      private var var_1433:Boolean;
      
      public function RoomWidgetRoomQueueUpdateEvent(param1:String, param2:int, param3:Boolean, param4:Boolean, param5:Boolean, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_760 = param2;
         var_1654 = param3;
         var_275 = param4;
         var_1433 = param5;
      }
      
      public function get position() : int
      {
         return var_760;
      }
      
      public function get isActive() : Boolean
      {
         return var_275;
      }
      
      public function get isClubQueue() : Boolean
      {
         return var_1433;
      }
      
      public function get hasHabboClub() : Boolean
      {
         return var_1654;
      }
   }
}
