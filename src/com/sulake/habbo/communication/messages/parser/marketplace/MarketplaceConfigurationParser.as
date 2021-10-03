package com.sulake.habbo.communication.messages.parser.marketplace
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class MarketplaceConfigurationParser implements IMessageParser
   {
       
      
      private var var_1814:int;
      
      private var var_956:int;
      
      private var var_1817:int;
      
      private var var_1816:int;
      
      private var var_1813:int;
      
      private var var_1393:int;
      
      private var var_1815:Boolean;
      
      public function MarketplaceConfigurationParser()
      {
         super();
      }
      
      public function get offerMaxPrice() : int
      {
         return var_1814;
      }
      
      public function get tokenBatchPrice() : int
      {
         return var_956;
      }
      
      public function get offerMinPrice() : int
      {
         return var_1816;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get expirationHours() : int
      {
         return var_1813;
      }
      
      public function get tokenBatchSize() : int
      {
         return var_1393;
      }
      
      public function get commission() : int
      {
         return var_1817;
      }
      
      public function get isEnabled() : Boolean
      {
         return var_1815;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_1815 = param1.readBoolean();
         var_1817 = param1.readInteger();
         var_956 = param1.readInteger();
         var_1393 = param1.readInteger();
         var_1816 = param1.readInteger();
         var_1814 = param1.readInteger();
         var_1813 = param1.readInteger();
         return true;
      }
   }
}
