package com.sulake.habbo.communication.messages.outgoing.recycler
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RecycleItemsMessageComposer implements IMessageComposer
   {
       
      
      private var var_782:Array;
      
      public function RecycleItemsMessageComposer(param1:Array)
      {
         super();
         var_782 = new Array();
         var_782.push(param1.length);
         var_782 = var_782.concat(param1);
      }
      
      public function dispose() : void
      {
      }
      
      public function getMessageArray() : Array
      {
         return var_782;
      }
   }
}
