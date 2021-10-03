package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class GuestRoomData implements IDisposable
   {
       
      
      private var _disposed:Boolean;
      
      private var var_1560:int;
      
      private var var_1705:String;
      
      private var var_1702:int;
      
      private var var_1704:int;
      
      private var var_658:Boolean;
      
      private var var_1648:Boolean;
      
      private var var_397:int;
      
      private var var_1066:String;
      
      private var var_1632:int;
      
      private var var_1065:int;
      
      private var _ownerName:String;
      
      private var var_625:String;
      
      private var var_1703:int;
      
      private var var_1706:RoomThumbnailData;
      
      private var var_1634:Boolean;
      
      private var var_582:Array;
      
      public function GuestRoomData(param1:IMessageDataWrapper)
      {
         var _loc4_:* = null;
         var_582 = new Array();
         super();
         var_397 = param1.readInteger();
         var_658 = param1.readBoolean();
         var_625 = param1.readString();
         _ownerName = param1.readString();
         var_1632 = param1.readInteger();
         var_1560 = param1.readInteger();
         var_1703 = param1.readInteger();
         var_1066 = param1.readString();
         var_1702 = param1.readInteger();
         var_1634 = param1.readBoolean();
         var_1704 = param1.readInteger();
         var_1065 = param1.readInteger();
         var_1705 = param1.readString();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc4_ = param1.readString();
            var_582.push(_loc4_);
            _loc3_++;
         }
         var_1706 = new RoomThumbnailData(param1);
         var_1648 = param1.readBoolean();
      }
      
      public function get maxUserCount() : int
      {
         return var_1703;
      }
      
      public function get roomName() : String
      {
         return var_625;
      }
      
      public function get userCount() : int
      {
         return var_1560;
      }
      
      public function get score() : int
      {
         return var_1704;
      }
      
      public function get eventCreationTime() : String
      {
         return var_1705;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1634;
      }
      
      public function get tags() : Array
      {
         return var_582;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1648;
      }
      
      public function get event() : Boolean
      {
         return var_658;
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
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get categoryId() : int
      {
         return var_1065;
      }
      
      public function get srchSpecPrm() : int
      {
         return var_1702;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get thumbnail() : RoomThumbnailData
      {
         return var_1706;
      }
      
      public function get doorMode() : int
      {
         return var_1632;
      }
      
      public function get flatId() : int
      {
         return var_397;
      }
      
      public function get description() : String
      {
         return var_1066;
      }
   }
}
