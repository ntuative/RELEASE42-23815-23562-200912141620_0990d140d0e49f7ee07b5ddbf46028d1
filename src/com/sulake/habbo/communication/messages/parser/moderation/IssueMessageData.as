package com.sulake.habbo.communication.messages.parser.moderation
{
   import flash.utils.getTimer;
   
   public class IssueMessageData
   {
      
      public static const const_136:int = 1;
      
      public static const const_1323:int = 3;
      
      public static const const_438:int = 2;
       
      
      private var var_2127:int;
      
      private var var_1780:int;
      
      private var var_2126:int;
      
      private var var_1571:int;
      
      private var _state:int;
      
      private var var_397:int;
      
      private var var_1210:int;
      
      private var var_2073:int;
      
      private var var_879:int;
      
      private var _roomResources:String;
      
      private var var_2123:int;
      
      private var var_2121:int;
      
      private var var_2125:String;
      
      private var var_2129:String;
      
      private var var_2124:int = 0;
      
      private var var_1049:String;
      
      private var _message:String;
      
      private var var_1886:int;
      
      private var var_2122:String;
      
      private var var_1065:int;
      
      private var var_625:String;
      
      private var var_2128:String;
      
      private var var_1342:int;
      
      public function IssueMessageData()
      {
         super();
      }
      
      public function set reportedUserId(param1:int) : void
      {
         var_879 = param1;
      }
      
      public function set temporalPriority(param1:int) : void
      {
         var_2124 = param1;
      }
      
      public function get reporterUserId() : int
      {
         return var_2121;
      }
      
      public function set roomName(param1:String) : void
      {
         var_625 = param1;
      }
      
      public function set chatRecordId(param1:int) : void
      {
         var_2123 = param1;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function get roomResources() : String
      {
         return _roomResources;
      }
      
      public function set roomResources(param1:String) : void
      {
         _roomResources = param1;
      }
      
      public function get roomName() : String
      {
         return var_625;
      }
      
      public function get message() : String
      {
         return _message;
      }
      
      public function set worldId(param1:int) : void
      {
         var_1571 = param1;
      }
      
      public function set state(param1:int) : void
      {
         _state = param1;
      }
      
      public function get unitPort() : int
      {
         return var_1780;
      }
      
      public function get priority() : int
      {
         return var_2127 + var_2124;
      }
      
      public function set issueId(param1:int) : void
      {
         var_2073 = param1;
      }
      
      public function get pickerUserName() : String
      {
         return var_2129;
      }
      
      public function getOpenTime() : String
      {
         var _loc1_:int = (getTimer() - var_1342) / 1000;
         var _loc2_:int = _loc1_ % 60;
         var _loc3_:int = _loc1_ / 60;
         var _loc4_:int = _loc3_ % 60;
         var _loc5_:int = _loc3_ / 60;
         var _loc6_:String = _loc2_ < 10 ? "0" + _loc2_ : "" + _loc2_;
         var _loc7_:String = _loc4_ < 10 ? "0" + _loc4_ : "" + _loc4_;
         var _loc8_:String = _loc5_ < 10 ? "0" + _loc5_ : "" + _loc5_;
         return _loc8_ + ":" + _loc7_ + ":" + _loc6_;
      }
      
      public function get categoryId() : int
      {
         return var_1065;
      }
      
      public function set reporterUserId(param1:int) : void
      {
         var_2121 = param1;
      }
      
      public function get roomType() : int
      {
         return var_1210;
      }
      
      public function set flatType(param1:String) : void
      {
         var_2125 = param1;
      }
      
      public function get chatRecordId() : int
      {
         return var_2123;
      }
      
      public function set message(param1:String) : void
      {
         _message = param1;
      }
      
      public function get worldId() : int
      {
         return var_1571;
      }
      
      public function set flatOwnerName(param1:String) : void
      {
         var_2128 = param1;
      }
      
      public function set reportedUserName(param1:String) : void
      {
         var_1049 = param1;
      }
      
      public function get issueId() : int
      {
         return var_2073;
      }
      
      public function set priority(param1:int) : void
      {
         var_2127 = param1;
      }
      
      public function set unitPort(param1:int) : void
      {
         var_1780 = param1;
      }
      
      public function get flatType() : String
      {
         return var_2125;
      }
      
      public function set reportedCategoryId(param1:int) : void
      {
         var_2126 = param1;
      }
      
      public function set pickerUserName(param1:String) : void
      {
         var_2129 = param1;
      }
      
      public function set pickerUserId(param1:int) : void
      {
         var_1886 = param1;
      }
      
      public function get reportedUserName() : String
      {
         return var_1049;
      }
      
      public function set roomType(param1:int) : void
      {
         var_1210 = param1;
      }
      
      public function get reportedCategoryId() : int
      {
         return var_2126;
      }
      
      public function set flatId(param1:int) : void
      {
         var_397 = param1;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1065 = param1;
      }
      
      public function set timeStamp(param1:int) : void
      {
         var_1342 = param1;
      }
      
      public function get pickerUserId() : int
      {
         return var_1886;
      }
      
      public function set reporterUserName(param1:String) : void
      {
         var_2122 = param1;
      }
      
      public function get timeStamp() : int
      {
         return var_1342;
      }
      
      public function get reportedUserId() : int
      {
         return var_879;
      }
      
      public function get flatId() : int
      {
         return var_397;
      }
      
      public function get flatOwnerName() : String
      {
         return var_2128;
      }
      
      public function get reporterUserName() : String
      {
         return var_2122;
      }
   }
}
