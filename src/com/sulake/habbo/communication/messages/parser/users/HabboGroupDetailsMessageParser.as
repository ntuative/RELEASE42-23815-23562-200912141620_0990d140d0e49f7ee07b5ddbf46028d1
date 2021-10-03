package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class HabboGroupDetailsMessageParser implements IMessageParser
   {
       
      
      private var var_625:String = "";
      
      private var _name:String = "";
      
      private var _roomId:int = -1;
      
      private var var_966:int = -1;
      
      private var var_1066:String = "";
      
      public function HabboGroupDetailsMessageParser()
      {
         super();
      }
      
      public function get groupId() : int
      {
         return var_966;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_966 = param1.readInteger();
         if(var_966 != -1)
         {
            _name = param1.readString();
            var_1066 = param1.readString();
            _roomId = param1.readInteger();
            var_625 = param1.readString();
         }
         return true;
      }
      
      public function flush() : Boolean
      {
         var_966 = -1;
         _name = "";
         var_1066 = "";
         _roomId = -1;
         var_625 = "";
         return true;
      }
      
      public function get roomName() : String
      {
         return var_625;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get description() : String
      {
         return var_1066;
      }
   }
}
