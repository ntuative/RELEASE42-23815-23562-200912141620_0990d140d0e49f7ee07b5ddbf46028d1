package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomEntryData implements IDisposable
   {
      
      public static const const_870:int = 4;
      
      public static const TYPE_PUBLIC_SPACE:int = 3;
      
      public static const const_657:int = 2;
      
      public static const const_781:int = 1;
       
      
      private var var_1559:String;
      
      private var _disposed:Boolean;
      
      private var var_1560:int;
      
      private var var_1555:Boolean;
      
      private var var_774:String;
      
      private var var_708:PublicRoomData;
      
      private var _index:int;
      
      private var var_1556:String;
      
      private var _type:int;
      
      private var var_1546:String;
      
      private var var_707:GuestRoomData;
      
      private var var_1557:String;
      
      private var var_1558:int;
      
      public function OfficialRoomEntryData(param1:int, param2:IMessageDataWrapper)
      {
         super();
         _index = param1;
         var_1559 = param2.readString();
         var_1557 = param2.readString();
         var_1555 = param2.readInteger() == 1;
         var_1556 = param2.readString();
         var_774 = param2.readString();
         var_1560 = param2.readInteger();
         _type = param2.readInteger();
         if(_type == const_781)
         {
            var_1546 = param2.readString();
         }
         else if(_type == TYPE_PUBLIC_SPACE)
         {
            var_708 = new PublicRoomData(param2);
         }
         else if(_type == const_657)
         {
            var_707 = new GuestRoomData(param2);
         }
         else if(_type == const_870)
         {
            var_1558 = param2.readInteger();
         }
      }
      
      public function get tag() : String
      {
         return var_1546;
      }
      
      public function get userCount() : int
      {
         return var_1560;
      }
      
      public function get index() : int
      {
         return _index;
      }
      
      public function get showDetails() : Boolean
      {
         return var_1555;
      }
      
      public function get picText() : String
      {
         return var_1556;
      }
      
      public function get maxUsers() : int
      {
         if(this.type == const_781)
         {
            return 0;
         }
         if(this.type == const_657)
         {
            return this.var_707.maxUserCount;
         }
         if(this.type == TYPE_PUBLIC_SPACE)
         {
            return this.var_708.maxUsers;
         }
         return 0;
      }
      
      public function get popupDesc() : String
      {
         return var_1557;
      }
      
      public function dispose() : void
      {
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(this.var_707 != null)
         {
            this.var_707.dispose();
            this.var_707 = null;
         }
         if(this.var_708 != null)
         {
            this.var_708.dispose();
            this.var_708 = null;
         }
      }
      
      public function get popupCaption() : String
      {
         return var_1559;
      }
      
      public function get guestRoomData() : GuestRoomData
      {
         return var_707;
      }
      
      public function get picRef() : String
      {
         return var_774;
      }
      
      public function get flatCategoryId() : int
      {
         return var_1558;
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get publicRoomData() : PublicRoomData
      {
         return var_708;
      }
      
      public function get type() : int
      {
         return _type;
      }
   }
}
