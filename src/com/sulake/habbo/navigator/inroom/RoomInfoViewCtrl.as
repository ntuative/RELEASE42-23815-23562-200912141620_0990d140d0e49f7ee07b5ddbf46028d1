package com.sulake.habbo.navigator.inroom
{
   import com.sulake.core.window.IWindow;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.IContainerButtonWindow;
   import com.sulake.core.window.components.ITextFieldWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowEvent;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.communication.messages.incoming.navigator.GuestRoomData;
   import com.sulake.habbo.communication.messages.incoming.navigator.PublicRoomShortData;
   import com.sulake.habbo.communication.messages.incoming.navigator.RoomEventData;
   import com.sulake.habbo.communication.messages.outgoing.navigator.AddFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.CanCreateEventMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.DeleteFavouriteRoomMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.RateFlatMessageComposer;
   import com.sulake.habbo.communication.messages.outgoing.navigator.UpdateNavigatorSettingsMessageComposer;
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.SimpleAlertView;
   import com.sulake.habbo.navigator.TagRenderer;
   import com.sulake.habbo.navigator.Util;
   import com.sulake.habbo.navigator.events.HabboRoomSettingsTrackingEvent;
   import com.sulake.habbo.navigator.roomsettings.IRoomSettingsCtrlOwner;
   import com.sulake.habbo.navigator.roomsettings.RoomSettingsCtrl;
   import com.sulake.habbo.navigator.roomthumbnails.RoomThumbnailCtrl;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.events.HabboToolbarShowMenuEvent;
   import com.sulake.habbo.window.enum.HabboWindowParam;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class RoomInfoViewCtrl implements IRoomSettingsCtrlOwner
   {
       
      
      private var var_682:IWindowContainer;
      
      private var var_1002:ITextWindow;
      
      private var var_201:RoomSettingsCtrl;
      
      private var var_1247:IContainerButtonWindow;
      
      private var _window:IWindowContainer;
      
      private var var_477:Timer;
      
      private var var_1242:ITextWindow;
      
      private var var_341:IWindowContainer;
      
      private var var_2028:IWindowContainer;
      
      private var var_2029:ITextWindow;
      
      private var var_833:IWindowContainer;
      
      private var var_1453:IButtonWindow;
      
      private var _ownerName:ITextWindow;
      
      private var var_625:ITextWindow;
      
      private var var_1451:IWindowContainer;
      
      private var var_1244:IWindowContainer;
      
      private var var_830:ITextWindow;
      
      private var var_1003:ITextFieldWindow;
      
      private var var_299:IWindowContainer;
      
      private var var_832:ITextWindow;
      
      private var var_1452:IButtonWindow;
      
      private var var_1004:ITextWindow;
      
      private var var_2236:int;
      
      private var var_1246:IContainerButtonWindow;
      
      private var var_831:IWindowContainer;
      
      private var var_1241:ITextWindow;
      
      private var var_1245:IContainerButtonWindow;
      
      private var var_1455:ITextWindow;
      
      private var var_1454:IButtonWindow;
      
      private var var_959:TagRenderer;
      
      private var var_1907:ITextWindow;
      
      private var var_342:RoomEventViewCtrl;
      
      private var _navigator:HabboNavigator;
      
      private var var_681:ITextWindow;
      
      private var var_267:RoomThumbnailCtrl;
      
      private var var_1243:IContainerButtonWindow;
      
      private var var_2030:IWindowContainer;
      
      private var var_266:IWindowContainer;
      
      public function RoomInfoViewCtrl(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_342 = new RoomEventViewCtrl(_navigator);
         var_201 = new RoomSettingsCtrl(_navigator,this,true);
         var_267 = new RoomThumbnailCtrl(_navigator);
         var_959 = new TagRenderer(_navigator);
         _navigator.roomSettingsCtrls.push(this.var_201);
         var_477 = new Timer(6000,1);
         var_477.addEventListener(TimerEvent.TIMER,hideInfo);
      }
      
      public function backToRoomSettings() : void
      {
         this.var_201.active = true;
         this.var_342.active = false;
         this.var_267.active = false;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      private function refreshEventButtons(param1:RoomEventData) : void
      {
         if(false)
         {
            return;
         }
         var_1453.visible = param1 == null && _navigator.data.currentRoomOwner;
         var_1454.visible = param1 != null && (_navigator.data.currentRoomOwner || _navigator.data.eventMod);
         var_1451.visible = Util.hasVisibleChildren(var_1451);
      }
      
      private function refreshRoomDetails(param1:GuestRoomData, param2:Boolean) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_625.text = param1.roomName;
         var_625.height = NaN;
         _ownerName.text = param1.ownerName;
         var_830.text = param1.description;
         var_959.refreshTags(var_341,param1.tags);
         var_830.visible = false;
         if(param1.description != "")
         {
            var_830.height = NaN;
            var_830.visible = true;
         }
         var _loc3_:* = _navigator.data.currentRoomRating == -1;
         _navigator.refreshButton(var_341,"thumb_up",_loc3_,onThumbUp,0);
         _navigator.refreshButton(var_341,"thumb_down",_loc3_,onThumbDown,0);
         var_2029.visible = _loc3_;
         var_832.visible = !_loc3_;
         var_1455.visible = !_loc3_;
         var_1455.text = "" + _navigator.data.currentRoomRating;
         _navigator.refreshButton(var_341,"home",param2,null,0);
         _navigator.refreshButton(var_341,"favourite",!param2 && _navigator.data.isCurrentRoomFavourite(),null,0);
         Util.moveChildrenToColumn(var_341,["room_name","owner_name_cont","tags","room_desc","rating_cont"],var_625.y,0);
         var_341.visible = true;
         var_341.height = Util.getLowestPoint(var_341);
      }
      
      private function getButtonsMinHeight() : int
      {
         return !!_navigator.data.currentRoomOwner ? 0 : 21;
      }
      
      private function hideInfo(param1:Event) : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_424,HabboToolbarIconEnum.ROOMINFO,_window,false));
      }
      
      private function onThumbUp(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(1));
      }
      
      private function getRoomInfoMinHeight() : int
      {
         return 37;
      }
      
      public function onAddFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         var _loc3_:* = null;
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         if(_navigator.data.isFavouritesFull())
         {
            _loc3_ = new SimpleAlertView(_navigator,"${navigator.favouritesfull.title}","${navigator.favouritesfull.body}");
            _loc3_.show();
         }
         else
         {
            _navigator.send(new AddFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
         }
      }
      
      private function refreshRoomButtons(param1:Boolean) : void
      {
         if(_navigator.data.enteredGuestRoom == null || false || false)
         {
            return;
         }
         var_1452.visible = _navigator.data.canEditRoomSettings;
         var _loc2_:Boolean = _navigator.data.isCurrentRoomFavourite();
         var_1247.visible = _navigator.data.canAddFavourite && !_loc2_;
         var_1243.visible = _navigator.data.canAddFavourite && _loc2_;
         var_1246.visible = _navigator.data.canEditRoomSettings && !param1;
         var_1245.visible = _navigator.data.canEditRoomSettings && param1;
         var_1244.visible = Util.hasVisibleChildren(var_1244);
      }
      
      public function open(param1:Boolean) : void
      {
         this.var_477.reset();
         this.var_342.active = false;
         this.var_201.active = false;
         this.var_267.active = false;
         if(param1)
         {
            this.startRoomSettingsEdit(_navigator.data.enteredGuestRoom.flatId);
         }
         refresh();
         _window.visible = true;
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_47,HabboToolbarIconEnum.ROOMINFO,_window,false));
         _window.parent.activate();
         _window.activate();
         if(!param1)
         {
            this.var_477.start();
         }
      }
      
      public function toggle() : void
      {
         this.var_477.reset();
         this.var_342.active = false;
         this.var_201.active = false;
         this.var_267.active = false;
         refresh();
         if(true)
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_47,HabboToolbarIconEnum.ROOMINFO,_window,false));
            _window.parent.activate();
         }
         else
         {
            _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_424,HabboToolbarIconEnum.ROOMINFO,_window,false));
         }
      }
      
      private function refreshRoom() : void
      {
         Util.hideChildren(var_299);
         var_299.findChildByName("close").visible = true;
         var _loc1_:GuestRoomData = _navigator.data.enteredGuestRoom;
         var _loc2_:Boolean = _navigator.data.settings != null && _loc1_ != null && _loc1_.flatId == _navigator.data.settings.homeRoomId;
         refreshRoomDetails(_loc1_,_loc2_);
         refreshPublicSpaceDetails(_navigator.data.enteredPublicSpace);
         refreshRoomButtons(_loc2_);
         this.var_201.refresh(var_299);
         this.var_267.refresh(var_299);
         Util.moveChildrenToColumn(var_299,["room_details","room_buttons"],0,2);
         var_299.height = Util.getLowestPoint(var_299);
         var_299.visible = true;
         Logger.log("XORP: undefined, undefined, undefined, undefined, undefined");
      }
      
      private function onCloseButtonClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         hideInfo(null);
      }
      
      private function onEmbedSrcClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var_1003.setSelection(0,var_1003.text.length);
      }
      
      private function getEmbedData() : String
      {
         var _loc1_:* = null;
         var _loc2_:* = null;
         if(_navigator.data.enteredGuestRoom != null)
         {
            _loc1_ = "private";
            _loc2_ = "" + _navigator.data.enteredGuestRoom.flatId;
         }
         else
         {
            _loc1_ = "public";
            _loc2_ = "" + _navigator.data.publicSpaceNodeId;
            Logger.log("Node id is: " + _loc2_);
         }
         var _loc3_:String = _navigator.configuration.getKey("user.hash","");
         _navigator.registerParameter("navigator.embed.src","roomType",_loc1_);
         _navigator.registerParameter("navigator.embed.src","embedCode",_loc3_);
         _navigator.registerParameter("navigator.embed.src","roomId",_loc2_);
         return _navigator.getText("navigator.embed.src");
      }
      
      private function onThumbDown(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         _navigator.send(new RateFlatMessageComposer(-1));
      }
      
      private function refreshEvent() : void
      {
         Util.hideChildren(var_266);
         var _loc1_:RoomEventData = _navigator.data.roomEventData;
         refreshEventDetails(_loc1_);
         refreshEventButtons(_loc1_);
         this.var_342.refresh(var_266);
         if(Util.hasVisibleChildren(var_266) && !this.var_267.active)
         {
            Util.moveChildrenToColumn(var_266,["event_details","event_buttons"],0,2);
            var_266.height = Util.getLowestPoint(var_266);
            var_266.visible = true;
         }
         else
         {
            var_266.visible = false;
         }
         Logger.log("EVENT: undefined, undefined");
      }
      
      public function startEventEdit() : void
      {
         this.var_477.reset();
         this.var_342.active = true;
         this.var_201.active = false;
         this.var_267.active = false;
         this.reload();
      }
      
      private function getEventInfoMinHeight() : int
      {
         return 18;
      }
      
      public function onRemoveFavouriteClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.enteredGuestRoom == null)
         {
            return;
         }
         _navigator.send(new DeleteFavouriteRoomMessageComposer(0,_navigator.data.enteredGuestRoom.flatId));
      }
      
      private function onHover(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_OVER)
         {
            return;
         }
         var_477.reset();
      }
      
      private function refreshPublicSpaceDetails(param1:PublicRoomShortData) : void
      {
         if(param1 == null || false || false)
         {
            return;
         }
         var_1002.text = _navigator.getPublicSpaceName(param1.unitPropertySet,param1.worldId);
         var_1002.height = NaN;
         var_1242.text = _navigator.getPublicSpaceDesc(param1.unitPropertySet,param1.worldId);
         var_1242.height = NaN;
         Util.moveChildrenToColumn(var_682,["public_space_name","public_space_desc"],var_1002.y,0);
         var_682.visible = true;
         var_682.height = Math.max(86,Util.getLowestPoint(var_682));
      }
      
      public function reload() : void
      {
         if(_window != null && false)
         {
            refresh();
         }
      }
      
      private function find(param1:String) : IWindow
      {
         var _loc2_:IWindow = _window.findChildByName(param1);
         if(_loc2_ == null)
         {
            throw new Error("Window element with name: " + param1 + " cannot be found!");
         }
         return _loc2_;
      }
      
      private function refreshEmbed() : void
      {
         var _loc1_:* = _navigator.configuration.getKey("embed.showInRoomInfo","false") == "true";
         if(_loc1_ && true && true && true)
         {
            var_831.visible = true;
            var_1003.text = this.getEmbedData();
         }
         else
         {
            var_831.visible = false;
         }
      }
      
      public function startRoomSettingsEdit(param1:int) : void
      {
         this.var_477.reset();
         this.var_201.load(param1);
         this.var_201.active = true;
         this.var_342.active = false;
         this.var_267.active = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_DEFAULT));
      }
      
      public function startThumbnailEdit() : void
      {
         this.var_477.reset();
         this.var_201.active = false;
         this.var_342.active = false;
         this.var_267.active = true;
         this.reload();
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_THUMBS));
      }
      
      private function prepareWindow() : void
      {
         if(_window != null)
         {
            return;
         }
         _window = IWindowContainer(_navigator.getXmlWindow("iro_room_details"));
         _window.setParamFlag(HabboWindowParam.const_64,false);
         _window.setParamFlag(HabboWindowParam.const_1183,true);
         var_299 = IWindowContainer(find("room_info"));
         var_341 = IWindowContainer(find("room_details"));
         var_682 = IWindowContainer(find("public_space_details"));
         var_2030 = IWindowContainer(find("owner_name_cont"));
         var_2028 = IWindowContainer(find("rating_cont"));
         var_1244 = IWindowContainer(find("room_buttons"));
         var_625 = ITextWindow(find("room_name"));
         var_1002 = ITextWindow(find("public_space_name"));
         _ownerName = ITextWindow(find("owner_name"));
         var_830 = ITextWindow(find("room_desc"));
         var_1242 = ITextWindow(find("public_space_desc"));
         var_1004 = ITextWindow(find("owner_caption"));
         var_832 = ITextWindow(find("rating_caption"));
         var_2029 = ITextWindow(find("rate_caption"));
         var_1455 = ITextWindow(find("rating_txt"));
         var_266 = IWindowContainer(find("event_info"));
         var_833 = IWindowContainer(find("event_details"));
         var_1451 = IWindowContainer(find("event_buttons"));
         var_1907 = ITextWindow(find("event_name"));
         var_681 = ITextWindow(find("event_desc"));
         var_1247 = IContainerButtonWindow(find("add_favourite_button"));
         var_1243 = IContainerButtonWindow(find("rem_favourite_button"));
         var_1246 = IContainerButtonWindow(find("make_home_button"));
         var_1245 = IContainerButtonWindow(find("unmake_home_button"));
         var_1452 = IButtonWindow(find("room_settings_button"));
         var_1453 = IButtonWindow(find("create_event_button"));
         var_1454 = IButtonWindow(find("edit_event_button"));
         var_831 = IWindowContainer(find("embed_info"));
         var_1241 = ITextWindow(find("embed_info_txt"));
         var_1003 = ITextFieldWindow(find("embed_src_txt"));
         Util.setProcDirectly(var_1247,onAddFavouriteClick);
         Util.setProcDirectly(var_1243,onRemoveFavouriteClick);
         Util.setProcDirectly(var_1452,onRoomSettingsClick);
         Util.setProcDirectly(var_1246,onMakeHomeClick);
         Util.setProcDirectly(var_1245,onUnmakeHomeClick);
         Util.setProcDirectly(var_1453,onEventSettingsClick);
         Util.setProcDirectly(var_1454,onEventSettingsClick);
         Util.setProcDirectly(var_1003,onEmbedSrcClick);
         _navigator.refreshButton(var_1247,"favourite",true,null,0);
         _navigator.refreshButton(var_1243,"favourite",true,null,0);
         _navigator.refreshButton(var_1246,"home",true,null,0);
         _navigator.refreshButton(var_1245,"home",true,null,0);
         _window.findChildByName("close").procedure = onCloseButtonClick;
         Util.setProcDirectly(var_299,onHover);
         Util.setProcDirectly(var_266,onHover);
         var_1004.width = var_1004.textWidth;
         Util.moveChildrenToRow(var_2030,["owner_caption","owner_name"],var_1004.x,var_1004.y,3);
         var_832.width = var_832.textWidth;
         Util.moveChildrenToRow(var_2028,["rating_caption","rating_txt"],var_832.x,var_832.y,3);
         var_1241.height = NaN;
         Util.moveChildrenToColumn(var_831,["embed_info_txt","embed_src_txt"],var_1241.y,2);
         var_831.height = Util.getLowestPoint(var_831) + 5;
         var_2236 = NaN;
      }
      
      private function refreshEventDetails(param1:RoomEventData) : void
      {
         if(param1 == null || false)
         {
            return;
         }
         var_1907.text = param1.eventName;
         var_681.text = param1.eventDescription;
         var_959.refreshTags(var_833,[_navigator.getText("roomevent_type_" + param1.eventType),param1.tags[0],param1.tags[1]]);
         var_681.visible = false;
         if(param1.eventDescription != "")
         {
            var_681.height = NaN;
            var_681.y = Util.getLowestPoint(var_833) + 2;
            var_681.visible = true;
         }
         var_833.visible = true;
         var_833.height = Util.getLowestPoint(var_833);
      }
      
      private function refresh() : void
      {
         prepareWindow();
         refreshRoom();
         refreshEvent();
         refreshEmbed();
         Util.moveChildrenToColumn(this._window,["room_info","event_info","embed_info"],0,2);
         _window.height = Util.getLowestPoint(_window);
         _window.y = _window.desktop.height - 0 - 5;
         Logger.log("MAIN: undefined, undefined, undefined");
      }
      
      private function onRoomSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         startRoomSettingsEdit(_loc3_.flatId);
      }
      
      private function onUnmakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         Logger.log("CLEARING HOME ROOM:");
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(0));
      }
      
      private function onEventSettingsClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         if(_navigator.data.roomEventData == null)
         {
            if(_navigator.data.currentRoomOwner)
            {
               _navigator.send(new CanCreateEventMessageComposer());
            }
         }
         else
         {
            startEventEdit();
         }
      }
      
      public function roomSettingsRefreshNeeded() : void
      {
         refresh();
      }
      
      public function close() : void
      {
         _navigator.toolbar.events.dispatchEvent(new HabboToolbarShowMenuEvent(HabboToolbarShowMenuEvent.const_959,HabboToolbarIconEnum.ROOMINFO,_window,false));
         if(_window == null)
         {
            return;
         }
         this._window.visible = false;
         _navigator.events.dispatchEvent(new Event(HabboRoomSettingsTrackingEvent.HABBO_ROOM_SETTINGS_TRACKING_EVENT_CLOSED));
      }
      
      private function onMakeHomeClick(param1:WindowEvent, param2:IWindow) : void
      {
         if(param1.type != WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK)
         {
            return;
         }
         var _loc3_:GuestRoomData = _navigator.data.enteredGuestRoom;
         if(_loc3_ == null)
         {
            Logger.log("No entered room data?!");
            return;
         }
         Logger.log("SETTING HOME ROOM TO: " + _loc3_.flatId);
         _navigator.send(new UpdateNavigatorSettingsMessageComposer(_loc3_.flatId));
      }
   }
}
