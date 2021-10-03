package com.sulake.habbo.communication.messages.parser.room.engine
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   
   public class RoomEntryInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1609:int;
      
      private var var_398:Boolean;
      
      private var var_1610:Boolean;
      
      private var var_723:PublicRoomShortData;
      
      public function RoomEntryInfoMessageParser()
      {
         super();
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_1610 = param1.readBoolean();
         if(var_1610)
         {
            var_1609 = param1.readInteger();
            var_398 = param1.readBoolean();
         }
         else
         {
            var_723 = new PublicRoomShortData(param1);
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         if(var_723 != null)
         {
            var_723.dispose();
            var_723 = null;
         }
         return true;
      }
      
      public function get guestRoomId() : int
      {
         return var_1609;
      }
      
      public function get owner() : Boolean
      {
         return var_398;
      }
      
      public function get guestRoom() : Boolean
      {
         return var_1610;
      }
      
      public function get publicSpace() : PublicRoomShortData
      {
         return var_723;
      }
   }
}
