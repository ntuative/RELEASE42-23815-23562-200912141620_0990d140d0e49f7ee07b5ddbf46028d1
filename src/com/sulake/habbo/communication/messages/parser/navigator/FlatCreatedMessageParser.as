package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCreatedMessageParser implements IMessageParser
   {
       
      
      private var var_1615:String;
      
      private var var_397:int;
      
      public function FlatCreatedMessageParser()
      {
         super();
      }
      
      public function get flatName() : String
      {
         return var_1615;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this.var_397 = param1.readInteger();
         this.var_1615 = param1.readString();
         Logger.log("FLAT CREATED: " + this.var_397 + ", " + this.var_1615);
         return true;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get flatId() : int
      {
         return var_397;
      }
   }
}
