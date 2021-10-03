package com.sulake.habbo.room.messages
{
   public class RoomObjectAvatarCarryObjectUpdateMessage extends RoomObjectUpdateStateMessage
   {
       
      
      private var var_989:int;
      
      private var var_1221:String;
      
      public function RoomObjectAvatarCarryObjectUpdateMessage(param1:int, param2:String)
      {
         super();
         var_989 = param1;
         var_1221 = param2;
      }
      
      public function get itemType() : int
      {
         return var_989;
      }
      
      public function get itemName() : String
      {
         return var_1221;
      }
   }
}
