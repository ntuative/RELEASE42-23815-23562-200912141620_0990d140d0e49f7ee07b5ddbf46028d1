package com.sulake.habbo.communication.messages.outgoing.room.avatar
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class SignMessageComposer implements IMessageComposer
   {
       
      
      private var var_1717:int;
      
      public function SignMessageComposer(param1:int)
      {
         super();
         var_1717 = param1;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1717];
      }
      
      public function dispose() : void
      {
      }
   }
}
