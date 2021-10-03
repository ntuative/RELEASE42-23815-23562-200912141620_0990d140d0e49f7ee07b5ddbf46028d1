package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindowContext;
   import flash.display.DisplayObject;
   
   public class InternalWindowServices implements IInternalWindowServices
   {
       
      
      private var var_122:DisplayObject;
      
      private var var_2224:uint;
      
      private var var_805:IWindowToolTipAgentService;
      
      private var var_804:IWindowMouseScalingService;
      
      private var var_360:IWindowContext;
      
      private var var_802:IWindowFocusManagerService;
      
      private var var_806:IWindowMouseListenerService;
      
      private var var_803:IWindowMouseDraggingService;
      
      public function InternalWindowServices(param1:IWindowContext, param2:DisplayObject)
      {
         super();
         var_2224 = 0;
         var_122 = param2;
         var_360 = param1;
         var_803 = new WindowMouseDragger(param2);
         var_804 = new WindowMouseScaler(param2);
         var_806 = new WindowMouseListener(param2);
         var_802 = new FocusManager(param2);
         var_805 = new WindowToolTipAgent(param2);
      }
      
      public function getMouseScalingService() : IWindowMouseScalingService
      {
         return var_804;
      }
      
      public function getFocusManagerService() : IWindowFocusManagerService
      {
         return var_802;
      }
      
      public function getToolTipAgentService() : IWindowToolTipAgentService
      {
         return var_805;
      }
      
      public function dispose() : void
      {
         if(var_803 != null)
         {
            var_803.dispose();
            var_803 = null;
         }
         if(var_804 != null)
         {
            var_804.dispose();
            var_804 = null;
         }
         if(var_806 != null)
         {
            var_806.dispose();
            var_806 = null;
         }
         if(var_802 != null)
         {
            var_802.dispose();
            var_802 = null;
         }
         if(var_805 != null)
         {
            var_805.dispose();
            var_805 = null;
         }
         var_360 = null;
      }
      
      public function getMouseListenerService() : IWindowMouseListenerService
      {
         return var_806;
      }
      
      public function getMouseDraggingService() : IWindowMouseDraggingService
      {
         return var_803;
      }
   }
}
