package com.sulake.habbo.widget.events
{
   import flash.display.BitmapData;
   
   public class RoomWidgetUserInfoUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_186:String = "RWUIUE_PEER";
      
      public static const const_206:String = "RWUIUE_OWN_USER";
      
      public static const TRADE_REASON_NO_OWN_RIGHT:int = 1;
      
      public static const BOT:String = "RWUIUE_BOT";
      
      public static const const_1292:String = "BOT";
      
      public static const const_963:int = 2;
      
      public static const const_1178:int = 0;
      
      public static const const_979:int = 3;
       
      
      private var var_1106:String = "";
      
      private var var_1852:Boolean = false;
      
      private var var_1821:int = 0;
      
      private var var_1859:int = 0;
      
      private var var_1855:Boolean = false;
      
      private var var_1105:String = "";
      
      private var var_1857:Boolean = false;
      
      private var var_763:int = 0;
      
      private var var_1850:Boolean = true;
      
      private var var_966:int = 0;
      
      private var var_1856:Boolean = false;
      
      private var var_1068:Boolean = false;
      
      private var var_1853:Boolean = false;
      
      private var var_1851:int = 0;
      
      private var var_1849:Boolean = false;
      
      private var _image:BitmapData = null;
      
      private var var_243:Array;
      
      private var var_1070:Boolean = false;
      
      private var _name:String = "";
      
      private var var_1822:int = 0;
      
      private var var_1854:Boolean = false;
      
      private var var_1848:int = 0;
      
      private var var_1858:String = "";
      
      public function RoomWidgetUserInfoUpdateEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         var_243 = [];
         super(param1,param2,param3);
      }
      
      public function get userRoomId() : int
      {
         return var_1859;
      }
      
      public function set userRoomId(param1:int) : void
      {
         var_1859 = param1;
      }
      
      public function get canBeAskedAsFriend() : Boolean
      {
         return var_1852;
      }
      
      public function get canBeKicked() : Boolean
      {
         return var_1850;
      }
      
      public function set canBeKicked(param1:Boolean) : void
      {
         var_1850 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set amIAnyRoomController(param1:Boolean) : void
      {
         var_1857 = param1;
      }
      
      public function get motto() : String
      {
         return var_1106;
      }
      
      public function set isIgnored(param1:Boolean) : void
      {
         var_1856 = param1;
      }
      
      public function get isRoomOwner() : Boolean
      {
         return var_1068;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set motto(param1:String) : void
      {
         var_1106 = param1;
      }
      
      public function get amIOwner() : Boolean
      {
         return var_1854;
      }
      
      public function get groupBadgeId() : String
      {
         return var_1858;
      }
      
      public function set isRoomOwner(param1:Boolean) : void
      {
         var_1068 = param1;
      }
      
      public function get hasFlatControl() : Boolean
      {
         return var_1849;
      }
      
      public function set carryItem(param1:int) : void
      {
         var_1851 = param1;
      }
      
      public function get badges() : Array
      {
         return var_243;
      }
      
      public function get amIController() : Boolean
      {
         return var_1855;
      }
      
      public function set amIController(param1:Boolean) : void
      {
         var_1855 = param1;
      }
      
      public function set amIOwner(param1:Boolean) : void
      {
         var_1854 = param1;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function set canTradeReason(param1:int) : void
      {
         var_1848 = param1;
      }
      
      public function set groupBadgeId(param1:String) : void
      {
         var_1858 = param1;
      }
      
      public function set realName(param1:String) : void
      {
         var_1105 = param1;
      }
      
      public function get amIAnyRoomController() : Boolean
      {
         return var_1857;
      }
      
      public function get isIgnored() : Boolean
      {
         return var_1856;
      }
      
      public function get carryItem() : int
      {
         return var_1851;
      }
      
      public function get isSpectatorMode() : Boolean
      {
         return var_1070;
      }
      
      public function set isSpectatorMode(param1:Boolean) : void
      {
         var_1070 = param1;
      }
      
      public function set respectLeft(param1:int) : void
      {
         var_763 = param1;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get canTradeReason() : int
      {
         return var_1848;
      }
      
      public function get realName() : String
      {
         return var_1105;
      }
      
      public function set webID(param1:int) : void
      {
         var_1822 = param1;
      }
      
      public function set badges(param1:Array) : void
      {
         var_243 = param1;
      }
      
      public function set canTrade(param1:Boolean) : void
      {
         var_1853 = param1;
      }
      
      public function set hasFlatControl(param1:Boolean) : void
      {
         var_1849 = param1;
      }
      
      public function get respectLeft() : int
      {
         return var_763;
      }
      
      public function get webID() : int
      {
         return var_1822;
      }
      
      public function set groupId(param1:int) : void
      {
         var_966 = param1;
      }
      
      public function get xp() : int
      {
         return var_1821;
      }
      
      public function set canBeAskedAsFriend(param1:Boolean) : void
      {
         var_1852 = param1;
      }
      
      public function get groupId() : int
      {
         return var_966;
      }
      
      public function get canTrade() : Boolean
      {
         return var_1853;
      }
      
      public function set xp(param1:int) : void
      {
         var_1821 = param1;
      }
   }
}
