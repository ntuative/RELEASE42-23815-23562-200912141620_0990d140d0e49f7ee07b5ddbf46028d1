package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.communication.messages.incoming.navigator.FlatCategory;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomSearchResultData;
   import com.sulake.habbo.communication.messages.incoming.navigator.MsgWithRequestId;
   import com.sulake.habbo.communication.messages.incoming.navigator.OfficialRoomsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PopularRoomTagsData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.parser.navigator.FavouritesMessageParser;
   import com.sulake.habbo.communication.messages.parser.navigator.NavigatorSettingsMessageParser;
   import com.sulake.habbo.communication.messages.parser.room.engine.RoomEntryInfoMessageParser;
   import com.sulake.habbo.navigator.HabboNavigator;
   import flash.utils.Dictionary;
   
   public class NavigatorData
   {
      
      private static const const_1379:int = 10;
       
      
      private var var_1403:NavigatorSettingsMessageParser;
      
      private var var_1182:int;
      
      private var var_1882:Boolean;
      
      private var var_1884:int;
      
      private var var_789:Dictionary;
      
      private var var_2222:int;
      
      private var var_1885:int;
      
      private var var_1825:int;
      
      private var var_320:Array;
      
      private var var_1881:int;
      
      private var var_1160:Array;
      
      private var var_538:PublicRoomShortData;
      
      private var var_381:RoomEventData;
      
      private var var_139:MsgWithRequestId;
      
      private var var_1865:Boolean;
      
      private var _navigator:HabboNavigator;
      
      private var var_1883:Boolean;
      
      private var var_194:GuestRoomData;
      
      private var var_652:Boolean;
      
      private var _currentRoomOwner:Boolean;
      
      public function NavigatorData(param1:HabboNavigator)
      {
         var_320 = new Array();
         var_789 = new Dictionary();
         super();
         _navigator = param1;
      }
      
      public function get createdFlatId() : int
      {
         return var_1884;
      }
      
      public function get eventMod() : Boolean
      {
         return var_1883;
      }
      
      public function startLoading() : void
      {
         this.var_652 = true;
      }
      
      public function isRoomFavourite(param1:int) : Boolean
      {
         return false;
      }
      
      public function set eventMod(param1:Boolean) : void
      {
         var_1883 = param1;
      }
      
      public function set roomEventData(param1:RoomEventData) : void
      {
         if(var_381 != null)
         {
            var_381.dispose();
         }
         var_381 = param1;
      }
      
      public function get popularTagsArrived() : Boolean
      {
         return var_139 != null && var_139 as PopularRoomTagsData != null;
      }
      
      public function get guestRoomSearchArrived() : Boolean
      {
         return var_139 != null && var_139 as GuestRoomSearchResultData != null;
      }
      
      public function get guestRoomSearchResults() : GuestRoomSearchResultData
      {
         return var_139 as GuestRoomSearchResultData;
      }
      
      public function get enteredGuestRoom() : GuestRoomData
      {
         return var_194;
      }
      
      public function onRoomEnter(param1:RoomEntryInfoMessageParser) : void
      {
         var_538 = null;
         var_194 = null;
         _currentRoomOwner = false;
         if(param1.guestRoom)
         {
            _currentRoomOwner = param1.owner;
         }
         else
         {
            var_538 = param1.publicSpace;
            var_381 = null;
         }
      }
      
      public function onRoomExit() : void
      {
         if(var_381 != null)
         {
            var_381.dispose();
            var_381 = null;
         }
         if(var_538 != null)
         {
            var_538.dispose();
            var_538 = null;
         }
         if(var_194 != null)
         {
            var_194.dispose();
            var_194 = null;
         }
         _currentRoomOwner = false;
      }
      
      public function set officialRooms(param1:OfficialRoomsData) : void
      {
         disposeCurrentMsg();
         var_139 = param1;
         var_652 = false;
         if(var_1160 == null)
         {
            var_1160 = param1.topLevelNodes;
         }
      }
      
      public function get settings() : NavigatorSettingsMessageParser
      {
         return var_1403;
      }
      
      public function set popularTags(param1:PopularRoomTagsData) : void
      {
         disposeCurrentMsg();
         var_139 = param1;
         var_652 = false;
      }
      
      public function get currentRoomOwner() : Boolean
      {
         return _currentRoomOwner;
      }
      
      public function getCategoryByIndex(param1:int) : FlatCategory
      {
         if(var_320.length > param1)
         {
            return var_320[param1] as FlatCategory;
         }
         return null;
      }
      
      public function onFavourites(param1:FavouritesMessageParser) : void
      {
         var _loc2_:int = 0;
         this.var_2222 = param1.limit;
         this.var_1182 = param1.favouriteRoomIds.length;
         this.var_789 = new Dictionary();
         for each(_loc2_ in param1.favouriteRoomIds)
         {
            this.var_789[_loc2_] = "yes";
         }
      }
      
      public function get popularTags() : PopularRoomTagsData
      {
         return var_139 as PopularRoomTagsData;
      }
      
      public function get categories() : Array
      {
         return var_320;
      }
      
      public function get enteredPublicSpace() : PublicRoomShortData
      {
         return var_538;
      }
      
      public function set avatarId(param1:int) : void
      {
         var_1825 = param1;
      }
      
      public function get hotRoomPopupOpen() : Boolean
      {
         return var_1882;
      }
      
      public function set guestRoomSearchResults(param1:GuestRoomSearchResultData) : void
      {
         disposeCurrentMsg();
         var_139 = param1;
         var_652 = false;
      }
      
      public function getCategoryIndexById(param1:int) : int
      {
         var _loc2_:int = 0;
         while(_loc2_ < var_320.length)
         {
            if((var_320[_loc2_] as FlatCategory).nodeId == param1)
            {
               return _loc2_;
            }
            _loc2_++;
         }
         return -1;
      }
      
      public function get canEditRoomSettings() : Boolean
      {
         return var_194 != null && _currentRoomOwner;
      }
      
      public function isLoading() : Boolean
      {
         return this.var_652;
      }
      
      public function set categories(param1:Array) : void
      {
         var_320 = param1;
      }
      
      public function get currentRoomRating() : int
      {
         return var_1885;
      }
      
      public function get publicSpaceNodeId() : int
      {
         return var_1881;
      }
      
      public function set settings(param1:NavigatorSettingsMessageParser) : void
      {
         var_1403 = param1;
      }
      
      private function disposeCurrentMsg() : void
      {
         if(var_139 == null)
         {
            return;
         }
         var_139.dispose();
         var_139 = null;
      }
      
      public function get roomEventData() : RoomEventData
      {
         return var_381;
      }
      
      public function favouriteChanged(param1:int, param2:Boolean) : void
      {
         var_789[param1] = !!param2 ? "yes" : null;
         var_1182 += !!param2 ? 1 : -1;
      }
      
      public function get officialRooms() : OfficialRoomsData
      {
         return var_139 as OfficialRoomsData;
      }
      
      public function get topLevelNodes() : Array
      {
         return var_1160;
      }
      
      public function get avatarId() : int
      {
         return var_1825;
      }
      
      public function isCurrentRoomFavourite() : Boolean
      {
         var _loc1_:int = 0;
         return false;
      }
      
      public function get officialRoomsArrived() : Boolean
      {
         return var_139 != null && var_139 as OfficialRoomsData != null;
      }
      
      public function set hotRoomPopupOpen(param1:Boolean) : void
      {
         var_1882 = param1;
      }
      
      public function set currentRoomRating(param1:int) : void
      {
         var_1885 = param1;
      }
      
      public function set hcMember(param1:Boolean) : void
      {
         var_1865 = param1;
      }
      
      public function set enteredRoom(param1:GuestRoomData) : void
      {
         if(var_194 != null)
         {
            var_194.dispose();
         }
         var_194 = param1;
      }
      
      public function getCategoryById(param1:int) : FlatCategory
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_320)
         {
            if(_loc2_.nodeId == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function isCurrentRoomHome() : Boolean
      {
         if(var_194 == null)
         {
            return false;
         }
         var _loc1_:int = 0;
         return this.var_1403.homeRoomId == _loc1_;
      }
      
      public function isFavouritesFull() : Boolean
      {
         return var_1182 >= var_2222;
      }
      
      public function set publicSpaceNodeId(param1:int) : void
      {
         var_1881 = param1;
      }
      
      public function get hcMember() : Boolean
      {
         return var_1865;
      }
      
      public function get canAddFavourite() : Boolean
      {
         return var_194 != null && !_currentRoomOwner;
      }
      
      public function set createdFlatId(param1:int) : void
      {
         var_1884 = param1;
      }
   }
}
