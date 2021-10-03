package com.sulake.habbo.communication.messages.parser.notifications
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetLevelNotificationParser implements IMessageParser
   {
       
      
      private var var_549:String;
      
      private var var_1541:int;
      
      private var var_1572:String;
      
      private var var_986:int;
      
      private var var_1224:int;
      
      public function PetLevelNotificationParser()
      {
         super();
      }
      
      public function get petId() : int
      {
         return var_1224;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1224 = param1.readInteger();
         var_1572 = param1.readString();
         var_1541 = param1.readInteger();
         var_549 = param1.readString();
         var_986 = param1.readInteger();
         return true;
      }
      
      public function get petName() : String
      {
         return var_1572;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get figure() : String
      {
         return var_549;
      }
      
      public function get petType() : int
      {
         return var_986;
      }
      
      public function get level() : int
      {
         return var_1541;
      }
   }
}
