package com.sulake.habbo.communication.messages.parser.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendCategoryData;
   import com.sulake.habbo.communication.messages.incoming.friendlist.FriendData;
   
   public class MessengerInitMessageParser implements IMessageParser
   {
       
      
      private var var_2191:int;
      
      private var var_2190:int;
      
      private var var_2192:int;
      
      private var var_226:Array;
      
      private var var_2193:int;
      
      private var var_2194:int;
      
      private var var_320:Array;
      
      public function MessengerInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         this.var_320 = new Array();
         this.var_226 = new Array();
         return true;
      }
      
      public function get extendedFriendLimit() : int
      {
         return this.var_2191;
      }
      
      public function get friends() : Array
      {
         return this.var_226;
      }
      
      public function get normalFriendLimit() : int
      {
         return this.var_2192;
      }
      
      public function get categories() : Array
      {
         return this.var_320;
      }
      
      public function get friendRequestLimit() : int
      {
         return this.var_2190;
      }
      
      public function get userFriendLimit() : int
      {
         return this.var_2194;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc4_:int = 0;
         this.var_2194 = param1.readInteger();
         this.var_2192 = param1.readInteger();
         this.var_2191 = param1.readInteger();
         var _loc2_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc2_)
         {
            this.var_320.push(new FriendCategoryData(param1));
            _loc4_++;
         }
         var _loc3_:int = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            this.var_226.push(new FriendData(param1));
            _loc4_++;
         }
         this.var_2190 = param1.readInteger();
         this.var_2193 = param1.readInteger();
         return true;
      }
      
      public function get friendRequestCount() : int
      {
         return this.var_2193;
      }
   }
}
