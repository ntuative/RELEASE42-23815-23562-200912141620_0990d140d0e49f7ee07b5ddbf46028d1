package com.sulake.habbo.help
{
   import com.sulake.core.assets.IAssetLibrary;
   import com.sulake.core.communication.messages.IMessageComposer;
   import com.sulake.core.runtime.Component;
   import com.sulake.core.runtime.IContext;
   import com.sulake.core.runtime.IID;
   import com.sulake.core.runtime.IUnknown;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import com.sulake.habbo.help.cfh.data.CallForHelpData;
   import com.sulake.habbo.help.cfh.data.UserRegistry;
   import com.sulake.habbo.help.enum.HabboHelpViewEnum;
   import com.sulake.habbo.help.help.HelpUI;
   import com.sulake.habbo.help.help.data.FaqIndex;
   import com.sulake.habbo.help.tutorial.TutorialUI;
   import com.sulake.habbo.localization.IHabboLocalizationManager;
   import com.sulake.habbo.session.IRoomSessionManager;
   import com.sulake.habbo.session.events.RoomSessionEvent;
   import com.sulake.habbo.toolbar.HabboToolbarIconEnum;
   import com.sulake.habbo.toolbar.IHabboToolbar;
   import com.sulake.habbo.toolbar.events.HabboToolbarEvent;
   import com.sulake.habbo.toolbar.events.HabboToolbarSetIconEvent;
   import com.sulake.habbo.window.IHabboWindowManager;
   import com.sulake.iid.IIDHabboCommunicationManager;
   import com.sulake.iid.IIDHabboConfigurationManager;
   import com.sulake.iid.IIDHabboLocalizationManager;
   import com.sulake.iid.IIDHabboRoomSessionManager;
   import com.sulake.iid.IIDHabboToolbar;
   import flash.utils.Dictionary;
   import iid.IIDHabboWindowManager;
   
   public class HabboHelp extends Component implements IHabboHelp
   {
       
      
      private var var_2052:UserRegistry;
      
      private var _assetLibrary:IAssetLibrary;
      
      private var var_145:TutorialUI;
      
      private var var_1472:IHabboLocalizationManager;
      
      private var _windowManager:IHabboWindowManager;
      
      private var var_64:HelpUI;
      
      private var var_1473:IHabboConfigurationManager;
      
      private var var_190:IHabboToolbar;
      
      private var var_683:IHabboCommunicationManager;
      
      private var var_840:FaqIndex;
      
      private var var_1663:String = "";
      
      private var var_1337:IncomingMessages;
      
      private var var_1258:CallForHelpData;
      
      public function HabboHelp(param1:IContext, param2:uint = 0, param3:IAssetLibrary = null)
      {
         var_1258 = new CallForHelpData();
         var_2052 = new UserRegistry();
         super(param1,param2,param3);
         _assetLibrary = param3;
         var_840 = new FaqIndex();
         queueInterface(new IIDHabboWindowManager(),onWindowManagerReady);
      }
      
      public function get toolbar() : IHabboToolbar
      {
         return var_190;
      }
      
      public function tellUI(param1:String, param2:* = null) : void
      {
         if(var_64 != null)
         {
            var_64.tellUI(param1,param2);
         }
      }
      
      private function toggleHelpUI() : void
      {
         if(var_64 == null)
         {
            if(!createHelpUI())
            {
               return;
            }
         }
         var_64.toggleUI();
      }
      
      private function removeTutorialUI() : void
      {
         if(var_145 != null)
         {
            var_145.dispose();
            var_145 = null;
         }
      }
      
      public function get ownUserName() : String
      {
         return var_1663;
      }
      
      public function get windowManager() : IHabboWindowManager
      {
         return _windowManager;
      }
      
      public function reportUser(param1:int, param2:String) : void
      {
         var_1258.reportedUserId = param1;
         var_1258.reportedUserName = param2;
         var_64.showUI(HabboHelpViewEnum.const_293);
      }
      
      public function get localization() : IHabboLocalizationManager
      {
         return var_1472;
      }
      
      private function onRoomSessionEvent(param1:RoomSessionEvent) : void
      {
         switch(param1.type)
         {
            case RoomSessionEvent.const_85:
               if(var_64 != null)
               {
                  var_64.setRoomSessionStatus(true);
               }
               if(var_145 != null)
               {
                  var_145.setRoomSessionStatus(true);
               }
               break;
            case RoomSessionEvent.const_101:
               if(var_64 != null)
               {
                  var_64.setRoomSessionStatus(false);
               }
               if(var_145 != null)
               {
                  var_145.setRoomSessionStatus(false);
               }
               userRegistry.unregisterRoom();
         }
      }
      
      public function enableCallForGuideBotUI() : void
      {
         if(var_64 != null)
         {
            var_64.updateCallForGuideBotUI(true);
         }
      }
      
      public function get userRegistry() : UserRegistry
      {
         return var_2052;
      }
      
      public function showCallForHelpResult(param1:String) : void
      {
         if(var_64 != null)
         {
            var_64.showCallForHelpResult(param1);
         }
      }
      
      override public function dispose() : void
      {
         if(var_64 != null)
         {
            var_64.dispose();
            var_64 = null;
         }
         if(var_145 != null)
         {
            var_145.dispose();
            var_145 = null;
         }
         var_1337 = null;
         if(var_840 != null)
         {
            var_840.dispose();
            var_840 = null;
         }
         if(_windowManager)
         {
            _windowManager.release(new IIDHabboWindowManager());
            _windowManager = null;
         }
         super.dispose();
      }
      
      private function setHabboToolbarIcon() : void
      {
         if(var_190 != null)
         {
            var_190.events.dispatchEvent(new HabboToolbarSetIconEvent(HabboToolbarSetIconEvent.const_128,HabboToolbarIconEnum.HELP));
         }
      }
      
      private function createTutorialUI() : Boolean
      {
         if(var_145 == null && _assetLibrary != null && _windowManager != null)
         {
            var_145 = new TutorialUI(this);
         }
         return var_145 != null;
      }
      
      private function createHelpUI() : Boolean
      {
         if(var_64 == null && _assetLibrary != null && _windowManager != null)
         {
            var_64 = new HelpUI(this,_assetLibrary,_windowManager,var_1472,var_190);
         }
         return var_64 != null;
      }
      
      public function set ownUserName(param1:String) : void
      {
         var_1663 = param1;
      }
      
      public function get callForHelpData() : CallForHelpData
      {
         return var_1258;
      }
      
      private function onWindowManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         _windowManager = IHabboWindowManager(param2);
         queueInterface(new IIDHabboCommunicationManager(),onCommunicationManagerReady);
      }
      
      private function onLocalizationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_1472 = IHabboLocalizationManager(param2);
         queueInterface(new IIDHabboConfigurationManager(),onConfigurationManagerReady);
      }
      
      public function updateTutorial(param1:Boolean, param2:Boolean, param3:Boolean) : void
      {
         if(param1 && param2 && param3)
         {
            removeTutorialUI();
            return;
         }
         if(var_145 == null)
         {
            if(!createTutorialUI())
            {
               return;
            }
         }
         var_145.update(param1,param2,param3);
      }
      
      private function onCommunicationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_683 = IHabboCommunicationManager(param2);
         var_1337 = new IncomingMessages(this,var_683);
         queueInterface(new IIDHabboToolbar(),onToolbarReady);
      }
      
      public function showUI(param1:String = null) : void
      {
         if(var_64 != null)
         {
            var_64.showUI(param1);
         }
      }
      
      public function sendMessage(param1:IMessageComposer) : void
      {
         if(var_683 != null && param1 != null)
         {
            var_683.getHabboMainConnection(null).send(param1);
         }
      }
      
      public function getFaq() : FaqIndex
      {
         return var_840;
      }
      
      public function disableCallForGuideBotUI() : void
      {
         if(var_64 != null)
         {
            var_64.updateCallForGuideBotUI(false);
         }
      }
      
      public function hideUI() : void
      {
         if(var_64 != null)
         {
            var_64.hideUI();
         }
      }
      
      private function onToolbarReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_190 = IHabboToolbar(param2);
         queueInterface(new IIDHabboLocalizationManager(),onLocalizationManagerReady);
      }
      
      private function onConfigurationManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var_1473 = IHabboConfigurationManager(param2);
         queueInterface(new IIDHabboRoomSessionManager(),onRoomSessionManagerReady);
      }
      
      public function get tutorialUI() : TutorialUI
      {
         return var_145;
      }
      
      private function onHabboToolbarEvent(param1:HabboToolbarEvent) : void
      {
         if(param1.type == HabboToolbarEvent.const_81)
         {
            setHabboToolbarIcon();
            return;
         }
         if(param1.type == HabboToolbarEvent.const_62)
         {
            if(param1.iconId == HabboToolbarIconEnum.HELP)
            {
               toggleHelpUI();
               return;
            }
         }
      }
      
      private function onRoomSessionManagerReady(param1:IID = null, param2:IUnknown = null) : void
      {
         var _loc3_:IRoomSessionManager = IRoomSessionManager(param2);
         _loc3_.events.addEventListener(RoomSessionEvent.const_85,onRoomSessionEvent);
         _loc3_.events.addEventListener(RoomSessionEvent.const_101,onRoomSessionEvent);
         var_190.events.addEventListener(HabboToolbarEvent.const_81,onHabboToolbarEvent);
         var_190.events.addEventListener(HabboToolbarEvent.const_62,onHabboToolbarEvent);
         createHelpUI();
         setHabboToolbarIcon();
      }
      
      public function showCallForHelpReply(param1:String) : void
      {
         if(var_64 != null)
         {
            var_64.showCallForHelpReply(param1);
         }
      }
      
      public function getConfigurationKey(param1:String, param2:String = null, param3:Dictionary = null) : String
      {
         if(var_1473 == null)
         {
            return param1;
         }
         return var_1473.getKey(param1,param2,param3);
      }
   }
}
