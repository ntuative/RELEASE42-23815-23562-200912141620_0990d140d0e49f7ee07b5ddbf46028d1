package com.sulake.habbo.communication.messages.outgoing.handshake
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class VersionCheckMessageComposer implements IMessageComposer
   {
       
      
      private var var_2105:String;
      
      private var var_1186:String;
      
      private var var_2104:int;
      
      public function VersionCheckMessageComposer(param1:int, param2:String, param3:String)
      {
         super();
         var_2104 = param1;
         var_1186 = param2;
         var_2105 = param3;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2104,var_1186,var_2105];
      }
      
      public function dispose() : void
      {
      }
   }
}
