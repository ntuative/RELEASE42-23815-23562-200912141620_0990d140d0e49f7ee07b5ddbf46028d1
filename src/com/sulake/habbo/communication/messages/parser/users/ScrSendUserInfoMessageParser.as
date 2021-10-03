package com.sulake.habbo.communication.messages.parser.users
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class ScrSendUserInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1896:int;
      
      private var var_1164:String;
      
      private var var_1895:int;
      
      private var var_1897:int;
      
      private var var_1899:int;
      
      private var var_1898:Boolean;
      
      public function ScrSendUserInfoMessageParser()
      {
         super();
      }
      
      public function get productName() : String
      {
         return var_1164;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get hasEverBeenMember() : Boolean
      {
         return var_1898;
      }
      
      public function get responseType() : int
      {
         return var_1897;
      }
      
      public function get daysToPeriodEnd() : int
      {
         return var_1895;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1164 = param1.readString();
         var_1895 = param1.readInteger();
         var_1896 = param1.readInteger();
         var_1899 = param1.readInteger();
         var_1897 = param1.readInteger();
         var_1898 = param1.readBoolean();
         return true;
      }
      
      public function get memberPeriods() : int
      {
         return var_1896;
      }
      
      public function get periodsSubscribedAhead() : int
      {
         return var_1899;
      }
   }
}
