package com.sulake.habbo.communication.messages.parser.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class FlatCatMessageParser implements IMessageParser
   {
       
      
      private var var_397:int;
      
      private var var_1259:int;
      
      public function FlatCatMessageParser()
      {
         super();
      }
      
      public function get flatId() : int
      {
         return var_397;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_397 = param1.readInteger();
         var_1259 = param1.readInteger();
         return true;
      }
      
      public function flush() : Boolean
      {
         var_397 = 0;
         var_1259 = 0;
         return true;
      }
      
      public function get nodeId() : int
      {
         return var_1259;
      }
   }
}
