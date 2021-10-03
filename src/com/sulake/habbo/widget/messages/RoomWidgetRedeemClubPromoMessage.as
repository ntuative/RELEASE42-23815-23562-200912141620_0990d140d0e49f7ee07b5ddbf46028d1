package com.sulake.habbo.widget.messages
{
   public class RoomWidgetRedeemClubPromoMessage extends RoomWidgetMessage
   {
      
      public static const const_524:String = "rwrcp_redeem_club_promo";
       
      
      private var var_2061:String;
      
      private var var_2060:Boolean;
      
      public function RoomWidgetRedeemClubPromoMessage(param1:String, param2:String, param3:Boolean)
      {
         super(param1);
         var_2061 = param2;
         var_2060 = param3;
      }
      
      public function get code() : String
      {
         return var_2061;
      }
      
      public function get isTrial() : Boolean
      {
         return var_2060;
      }
   }
}
