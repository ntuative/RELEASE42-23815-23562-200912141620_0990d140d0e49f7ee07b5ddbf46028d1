package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarFigureUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_1538:String;
      
      private var var_549:String;
      
      public function RoomObjectAvatarFigureUpdateMessage(param1:String, param2:String = "")
      {
         super();
         var_549 = param1;
         var_1538 = param2;
      }
      
      public function get race() : String
      {
         return var_1538;
      }
      
      public function get figure() : String
      {
         return var_549;
      }
   }
}
