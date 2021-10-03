package com.sulake.core.window.events
{
   import com.sulake.core.window.IWindow;
   import flash.events.Event;
   
   public class WindowEvent extends Event
   {
      
      public static const const_300:String = "WE_CHILD_RESIZED";
      
      public static const const_1328:String = "WE_CLOSE";
      
      public static const const_1281:String = "WE_DESTROY";
      
      public static const const_204:String = "WE_CHANGE";
      
      public static const const_1253:String = "WE_RESIZE";
      
      public static const WINDOW_EVENT_MESSAGE:String = "WE_MESSAGE";
      
      public static const const_1422:String = "WE_PARENT_RESIZE";
      
      public static const const_86:String = "WE_UPDATE";
      
      public static const const_1227:String = "WE_MAXIMIZE";
      
      public static const const_411:String = "WE_DESTROYED";
      
      public static const const_962:String = "WE_UNSELECT";
      
      public static const const_1352:String = "WE_MAXIMIZED";
      
      public static const const_1421:String = "WE_UNLOCKED";
      
      public static const const_427:String = "WE_CHILD_REMOVED";
      
      public static const const_152:String = "WE_OK";
      
      public static const const_43:String = "WE_RESIZED";
      
      public static const const_1164:String = "WE_ACTIVATE";
      
      public static const const_261:String = "WE_ENABLED";
      
      public static const const_465:String = "WE_CHILD_RELOCATED";
      
      public static const const_1192:String = "WE_CREATE";
      
      public static const const_521:String = "WE_SELECT";
      
      public static const const_160:String = "";
      
      public static const const_1551:String = "WE_LOCKED";
      
      public static const const_1436:String = "WE_PARENT_RELOCATE";
      
      public static const const_1448:String = "WE_CHILD_REMOVE";
      
      public static const const_1530:String = "WE_CHILD_RELOCATE";
      
      public static const const_1553:String = "WE_LOCK";
      
      public static const const_286:String = "WE_FOCUSED";
      
      public static const const_514:String = "WE_UNSELECTED";
      
      public static const const_851:String = "WE_DEACTIVATED";
      
      public static const const_1282:String = "WE_MINIMIZED";
      
      public static const const_1535:String = "WE_ARRANGED";
      
      public static const const_1399:String = "WE_UNLOCK";
      
      public static const const_1563:String = "WE_ATTACH";
      
      public static const const_1130:String = "WE_OPEN";
      
      public static const const_1207:String = "WE_RESTORE";
      
      public static const const_1472:String = "WE_PARENT_RELOCATED";
      
      public static const const_1338:String = "WE_RELOCATE";
      
      public static const const_1464:String = "WE_CHILD_RESIZE";
      
      public static const const_1478:String = "WE_ARRANGE";
      
      public static const const_1289:String = "WE_OPENED";
      
      public static const const_1263:String = "WE_CLOSED";
      
      public static const const_1431:String = "WE_DETACHED";
      
      public static const const_1408:String = "WE_UPDATED";
      
      public static const const_1267:String = "WE_UNFOCUSED";
      
      public static const const_373:String = "WE_RELOCATED";
      
      public static const const_1266:String = "WE_DEACTIVATE";
      
      public static const const_219:String = "WE_DISABLED";
      
      public static const const_677:String = "WE_CANCEL";
      
      public static const const_644:String = "WE_ENABLE";
      
      public static const const_1176:String = "WE_ACTIVATED";
      
      public static const const_1108:String = "WE_FOCUS";
      
      public static const const_1418:String = "WE_DETACH";
      
      public static const const_1275:String = "WE_RESTORED";
      
      public static const const_1249:String = "WE_UNFOCUS";
      
      public static const const_51:String = "WE_SELECTED";
      
      public static const const_1319:String = "WE_PARENT_RESIZED";
      
      public static const const_1220:String = "WE_CREATED";
      
      public static const const_1419:String = "WE_ATTACHED";
      
      public static const const_1271:String = "WE_MINIMIZE";
      
      public static const WINDOW_EVENT_DISABLE:String = "WE_DISABLE";
       
      
      protected var _type:String = "";
      
      protected var var_1525:IWindow;
      
      protected var _window:IWindow;
      
      protected var var_1307:Boolean;
      
      public function WindowEvent(param1:String, param2:IWindow, param3:IWindow, param4:Boolean = false, param5:Boolean = false)
      {
         _type = param1;
         _window = param2;
         var_1525 = param3;
         var_1307 = false;
         super(param1,param4,param5);
      }
      
      public function isWindowOperationPrevented() : Boolean
      {
         return var_1307;
      }
      
      public function get related() : IWindow
      {
         return var_1525;
      }
      
      public function get window() : IWindow
      {
         return _window;
      }
      
      public function set type(param1:String) : void
      {
         _type = param1;
      }
      
      override public function get type() : String
      {
         return _type;
      }
      
      override public function toString() : String
      {
         return formatToString("WindowEvent","type","bubbles","cancelable","window");
      }
      
      override public function clone() : Event
      {
         return new WindowEvent(_type,window,related,bubbles,cancelable);
      }
      
      public function preventWindowOperation() : void
      {
         if(cancelable)
         {
            var_1307 = true;
            stopImmediatePropagation();
            return;
         }
         throw new Error("Attempted to prevent window operation that is not canceable!");
      }
   }
}
