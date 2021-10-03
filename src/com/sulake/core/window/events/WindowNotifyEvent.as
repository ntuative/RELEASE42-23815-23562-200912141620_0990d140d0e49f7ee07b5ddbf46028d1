package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowNotifyEvent extends WindowEvent
   {
      
      public static const const_1119:String = "WN_CREATED";
      
      public static const const_908:String = "WN_DISABLE";
      
      public static const const_936:String = "WN_DEACTIVATED";
      
      public static const const_874:String = "WN_OPENED";
      
      public static const const_854:String = "WN_CLOSED";
      
      public static const const_827:String = "WN_DESTROY";
      
      public static const const_1475:String = "WN_ARRANGED";
      
      public static const const_391:String = "WN_PARENT_RESIZED";
      
      public static const const_825:String = "WN_ENABLE";
      
      public static const const_964:String = "WN_RELOCATE";
      
      public static const const_868:String = "WN_FOCUS";
      
      public static const const_891:String = "WN_PARENT_RELOCATED";
      
      public static const const_457:String = "WN_PARAM_UPDATED";
      
      public static const const_645:String = "WN_PARENT_ACTIVATED";
      
      public static const const_268:String = "WN_RESIZED";
      
      public static const const_876:String = "WN_CLOSE";
      
      public static const const_946:String = "WN_PARENT_REMOVED";
      
      public static const const_260:String = "WN_CHILD_RELOCATED";
      
      public static const const_641:String = "WN_ENABLED";
      
      public static const const_241:String = "WN_CHILD_RESIZED";
      
      public static const const_788:String = "WN_MINIMIZED";
      
      public static const const_605:String = "WN_DISABLED";
      
      public static const const_208:String = "WN_CHILD_ACTIVATED";
      
      public static const const_415:String = "WN_STATE_UPDATED";
      
      public static const const_683:String = "WN_UNSELECTED";
      
      public static const const_468:String = "WN_STYLE_UPDATED";
      
      public static const const_1504:String = "WN_UPDATE";
      
      public static const const_351:String = "WN_PARENT_ADDED";
      
      public static const const_706:String = "WN_RESIZE";
      
      public static const const_570:String = "WN_CHILD_REMOVED";
      
      public static const const_1489:String = "";
      
      public static const const_888:String = "WN_RESTORED";
      
      public static const const_330:String = "WN_SELECTED";
      
      public static const const_840:String = "WN_MINIMIZE";
      
      public static const const_995:String = "WN_FOCUSED";
      
      public static const const_1304:String = "WN_LOCK";
      
      public static const const_281:String = "WN_CHILD_ADDED";
      
      public static const const_817:String = "WN_UNFOCUSED";
      
      public static const const_423:String = "WN_RELOCATED";
      
      public static const const_925:String = "WN_DEACTIVATE";
      
      public static const const_1224:String = "WN_CRETAE";
      
      public static const const_881:String = "WN_RESTORE";
      
      public static const const_306:String = "WN_ACTVATED";
      
      public static const const_1312:String = "WN_LOCKED";
      
      public static const const_360:String = "WN_SELECT";
      
      public static const const_884:String = "WN_MAXIMIZE";
      
      public static const const_919:String = "WN_OPEN";
      
      public static const const_690:String = "WN_UNSELECT";
      
      public static const const_1457:String = "WN_ARRANGE";
      
      public static const const_1283:String = "WN_UNLOCKED";
      
      public static const const_1558:String = "WN_UPDATED";
      
      public static const const_877:String = "WN_ACTIVATE";
      
      public static const const_1221:String = "WN_UNLOCK";
      
      public static const const_843:String = "WN_MAXIMIZED";
      
      public static const const_790:String = "WN_DESTROYED";
      
      public static const const_939:String = "WN_UNFOCUS";
       
      
      public function WindowNotifyEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false)
      {
         super(param1,param2,param3,false,param4);
      }
      
      override public function toString() : String
      {
         return formatToString("WindowNotifyEvent","type","cancelable");
      }
      
      override public function clone() : Event
      {
         return new WindowNotifyEvent(type,_window,var_1525,cancelable);
      }
   }
}
