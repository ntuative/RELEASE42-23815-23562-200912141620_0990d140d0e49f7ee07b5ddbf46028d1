package com.sulake.habbo.communication.messages.parser.roomsettings
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class RoomSettingsSaveErrorMessageParser implements IMessageParser
   {
      
      public static const const_1447:int = 9;
      
      public static const const_1473:int = 4;
      
      public static const const_1401:int = 1;
      
      public static const const_1197:int = 10;
      
      public static const const_1534:int = 2;
      
      public static const const_1325:int = 7;
      
      public static const const_1344:int = 11;
      
      public static const const_1453:int = 3;
      
      public static const const_1206:int = 8;
      
      public static const const_1297:int = 5;
      
      public static const const_1459:int = 6;
      
      public static const const_1145:int = 12;
       
      
      private var var_1967:String;
      
      private var _roomId:int;
      
      private var var_1056:int;
      
      public function RoomSettingsSaveErrorMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get info() : String
      {
         return var_1967;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         _roomId = param1.readInteger();
         var_1056 = param1.readInteger();
         var_1967 = param1.readString();
         return true;
      }
      
      public function get errorCode() : int
      {
         return var_1056;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
   }
}
