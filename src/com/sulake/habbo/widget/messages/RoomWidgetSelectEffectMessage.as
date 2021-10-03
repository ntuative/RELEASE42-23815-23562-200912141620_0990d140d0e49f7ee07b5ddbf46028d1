package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectEffectMessage extends RoomWidgetMessage
   {
      
      public static const const_656:String = "RWCM_MESSAGE_SELECT_EFFECT";
      
      public static const const_596:String = "RWCM_MESSAGE_UNSELECT_EFFECT";
      
      public static const const_527:String = "RWCM_MESSAGE_UNSELECT_ALL_EFFECTS";
       
      
      private var var_1628:int;
      
      public function RoomWidgetSelectEffectMessage(param1:String, param2:int = -1)
      {
         super(param1);
         var_1628 = param2;
      }
      
      public function get effectType() : int
      {
         return var_1628;
      }
   }
}
