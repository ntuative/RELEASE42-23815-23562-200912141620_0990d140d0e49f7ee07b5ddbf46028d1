package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class RoomEventData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1907:String;
      
      private var var_397:int;
      
      private var var_1908:String;
      
      private var var_1905:String;
      
      private var var_1909:int;
      
      private var var_1906:String;
      
      private var var_1910:int;
      
      private var var_582:Array;
      
      private var var_1019:Boolean;
      
      public function RoomEventData(param1:IMessageDataWrapper)
      {
         var _loc5_:* = null;
         var_582 = new Array();
         super();
         var _loc2_:String = param1.readString();
         if(_loc2_ == "-1")
         {
            Logger.log("Got null room event");
            this.var_1019 = false;
            return;
         }
         this.var_1019 = true;
         var_1909 = int(_loc2_);
         var_1908 = param1.readString();
         var_397 = int(param1.readString());
         var_1910 = param1.readInteger();
         var_1907 = param1.readString();
         var_1905 = param1.readString();
         var_1906 = param1.readString();
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            _loc5_ = param1.readString();
            var_582.push(_loc5_);
            _loc4_++;
         }
      }
      
      public function get eventType() : int
      {
         return var_1910;
      }
      
      public function get eventName() : String
      {
         return var_1907;
      }
      
      public function get eventDescription() : String
      {
         return var_1905;
      }
      
      public function get ownerAvatarName() : String
      {
         return var_1908;
      }
      
      public function get tags() : Array
      {
         return var_582;
      }
      
      public function get creationTime() : String
      {
         return var_1906;
      }
      
      public function get exists() : Boolean
      {
         return var_1019;
      }
      
      public function get ownerAvatarId() : int
      {
         return var_1909;
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
         this.var_582 = null;
      }
      
      public function get flatId() : int
      {
         return var_397;
      }
   }
}
