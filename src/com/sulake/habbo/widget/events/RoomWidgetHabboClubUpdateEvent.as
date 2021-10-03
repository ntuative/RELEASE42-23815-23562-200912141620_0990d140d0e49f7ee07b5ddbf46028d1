package com.sulake.habbo.widget.events
{
   public class RoomWidgetHabboClubUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_194:String = "RWBIUE_HABBO_CLUB";
       
      
      private var var_1953:Boolean = false;
      
      private var var_1954:int = 0;
      
      private var var_1951:int = 0;
      
      private var var_1952:int = 0;
      
      public function RoomWidgetHabboClubUpdateEvent(param1:int, param2:int, param3:int, param4:Boolean, param5:Boolean = false, param6:Boolean = false)
      {
         super(const_194,param5,param6);
         var_1952 = param1;
         var_1951 = param2;
         var_1954 = param3;
         var_1953 = param4;
      }
      
      public function get pastPeriods() : int
      {
         return var_1954;
      }
      
      public function get periodsLeft() : int
      {
         return var_1951;
      }
      
      public function get daysLeft() : int
      {
         return var_1952;
      }
      
      public function get allowClubDances() : Boolean
      {
         return var_1953;
      }
   }
}
