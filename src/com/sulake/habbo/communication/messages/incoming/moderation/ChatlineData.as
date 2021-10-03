package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ChatlineData
   {
       
      
      private var var_1312:String;
      
      private var var_1971:int;
      
      private var var_1974:int;
      
      private var var_1972:int;
      
      private var var_1973:String;
      
      public function ChatlineData(param1:IMessageDataWrapper)
      {
         super();
         var_1971 = param1.readInteger();
         var_1972 = param1.readInteger();
         var_1974 = param1.readInteger();
         var_1973 = param1.readString();
         var_1312 = param1.readString();
      }
      
      public function get msg() : String
      {
         return var_1312;
      }
      
      public function get hour() : int
      {
         return var_1971;
      }
      
      public function get minute() : int
      {
         return var_1972;
      }
      
      public function get chatterName() : String
      {
         return var_1973;
      }
      
      public function get chatterId() : int
      {
         return var_1974;
      }
   }
}
