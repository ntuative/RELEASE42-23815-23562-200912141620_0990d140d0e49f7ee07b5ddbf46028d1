package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CfhChatlogData
   {
       
      
      private var var_879:int;
      
      private var var_2086:int;
      
      private var var_1495:int;
      
      private var var_118:RoomChatlogData;
      
      public function CfhChatlogData(param1:IMessageDataWrapper)
      {
         super();
         var_1495 = param1.readInteger();
         var_2086 = param1.readInteger();
         var_879 = param1.readInteger();
         var_118 = new RoomChatlogData(param1);
         Logger.log("READ CFHCHATLOGDATA: callId: " + var_1495);
      }
      
      public function get reportedUserId() : int
      {
         return var_879;
      }
      
      public function get callerUserId() : int
      {
         return var_2086;
      }
      
      public function get callId() : int
      {
         return var_1495;
      }
      
      public function get room() : RoomChatlogData
      {
         return var_118;
      }
   }
}
