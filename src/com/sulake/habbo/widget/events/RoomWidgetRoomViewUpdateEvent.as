package com.sulake.habbo.widget.events
{
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class RoomWidgetRoomViewUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_584:String = "RWRVUE_ROOM_VIEW_POSITION_CHANGED";
      
      public static const const_658:String = "RWRVUE_ROOM_VIEW_SCALE_CHANGED";
      
      public static const const_238:String = "RWRVUE_ROOM_VIEW_SIZE_CHANGED";
       
      
      private var var_1509:Point;
      
      private var var_1510:Rectangle;
      
      private var var_198:Number = 0;
      
      public function RoomWidgetRoomViewUpdateEvent(param1:String, param2:Rectangle = null, param3:Point = null, param4:Number = 0, param5:Boolean = false, param6:Boolean = false)
      {
         super(param1,param5,param6);
         var_1510 = param2;
         var_1509 = param3;
         var_198 = param4;
      }
      
      public function get rect() : Rectangle
      {
         if(var_1510 != null)
         {
            return var_1510.clone();
         }
         return null;
      }
      
      public function get scale() : Number
      {
         return var_198;
      }
      
      public function get positionDelta() : Point
      {
         if(var_1509 != null)
         {
            return var_1509.clone();
         }
         return null;
      }
   }
}
