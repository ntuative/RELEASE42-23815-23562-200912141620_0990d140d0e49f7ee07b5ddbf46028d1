package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.parser.inventory.pets.PetData;
   
   public class PetRespectNotificationParser implements IMessageParser
   {
       
      
      private var var_1592:int;
      
      private var var_1256:PetData;
      
      private var var_2046:int;
      
      public function PetRespectNotificationParser()
      {
         super();
      }
      
      public function get respect() : int
      {
         return var_1592;
      }
      
      public function get petData() : PetData
      {
         return var_1256;
      }
      
      public function flush() : Boolean
      {
         var_1256 = null;
         return true;
      }
      
      public function get petOwnerId() : int
      {
         return var_2046;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1592 = param1.readInteger();
         var_2046 = param1.readInteger();
         var_1256 = new PetData(param1);
         return true;
      }
   }
}
