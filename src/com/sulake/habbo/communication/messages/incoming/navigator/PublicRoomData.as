package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class PublicRoomData implements IDisposable
   {
       
      
      private var var_1780:int;
      
      private var var_1783:String;
      
      private var var_1571:int;
      
      private var _disposed:Boolean;
      
      private var var_1782:int;
      
      private var var_1781:String;
      
      private var var_1259:int;
      
      public function PublicRoomData(param1:IMessageDataWrapper)
      {
         super();
         var_1781 = param1.readString();
         var_1780 = param1.readInteger();
         var_1571 = param1.readInteger();
         var_1783 = param1.readString();
         var_1782 = param1.readInteger();
         var_1259 = param1.readInteger();
      }
      
      public function get maxUsers() : int
      {
         return var_1782;
      }
      
      public function get worldId() : int
      {
         return var_1571;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
      }
      
      public function get unitPropertySet() : String
      {
         return var_1781;
      }
      
      public function get unitPort() : int
      {
         return var_1780;
      }
      
      public function get castLibs() : String
      {
         return var_1783;
      }
      
      public function get nodeId() : int
      {
         return var_1259;
      }
   }
}
