package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class RoomVisitData
   {
       
      
      private var var_625:String;
      
      private var var_1845:int;
      
      private var var_1446:Boolean;
      
      private var _roomId:int;
      
      private var var_1844:int;
      
      public function RoomVisitData(param1:IMessageDataWrapper)
      {
         super();
         var_1446 = param1.readBoolean();
         _roomId = param1.readInteger();
         var_625 = param1.readString();
         var_1844 = param1.readInteger();
         var_1845 = param1.readInteger();
      }
      
      public function get isPublic() : Boolean
      {
         return var_1446;
      }
      
      public function get roomName() : String
      {
         return var_625;
      }
      
      public function get enterMinute() : int
      {
         return var_1845;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get enterHour() : int
      {
         return var_1844;
      }
   }
}
