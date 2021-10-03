package com.sulake.habbo.tracking
{
   import com.sulake.core.communication.connection.IConnection;
   import com.sulake.habbo.communication.IHabboCommunicationManager;
   import com.sulake.habbo.communication.messages.outgoing.tracking.LagWarningReportMessageComposer;
   import com.sulake.habbo.configuration.IHabboConfigurationManager;
   import flash.utils.getTimer;
   
   public class LagWarningLogger
   {
      
      public static const const_774:int = 0;
      
      public static const WARNING_TYPE_CHAT_DELAY:int = 1;
       
      
      private var var_1276:Boolean = true;
      
      private var var_1102:int = 0;
      
      private var var_859:int = 0;
      
      private var var_1103:int = 0;
      
      private var var_858:int = 0;
      
      private var _communication:IHabboCommunicationManager;
      
      private var var_1099:int = 15;
      
      private var var_167:IHabboConfigurationManager;
      
      private var _connection:IConnection;
      
      private var var_1100:int = 60;
      
      public function LagWarningLogger()
      {
         super();
         var_1103 = getTimer();
      }
      
      public function logWarnings() : void
      {
         if(!var_1276)
         {
            return;
         }
         if(nothingToReport)
         {
            return;
         }
         var _loc1_:LagWarningReportMessageComposer = new LagWarningReportMessageComposer(var_859,var_858);
         if(_connection != null)
         {
            _connection.send(_loc1_);
         }
         resetLog();
         ++var_1102;
      }
      
      private function get nothingToReport() : Boolean
      {
         return var_859 == 0 && var_858 == 0;
      }
      
      private function resetLog() : void
      {
         var_859 = 0;
         var_858 = 0;
      }
      
      public function update(param1:uint) : void
      {
         if(!var_1276)
         {
            return;
         }
         if(getTimer() - var_1103 > var_1100 * 1000 && var_1102 < var_1099)
         {
            var_1103 = getTimer();
            logWarnings();
         }
      }
      
      public function set configuration(param1:IHabboConfigurationManager) : void
      {
         var_167 = param1;
         var_1100 = int(var_167.getKey("lagwarninglog.interval","60"));
         var_1099 = int(var_167.getKey("lagwarninglog.reportlimit","15"));
         var_1276 = Boolean(int(var_167.getKey("lagwarninglog.enabled","1")));
      }
      
      public function registerWarning(param1:int) : void
      {
         switch(param1)
         {
            case WARNING_TYPE_CHAT_DELAY:
               var_858 += 1;
            case const_774:
               var_859 += 1;
         }
      }
      
      public function set communication(param1:IHabboCommunicationManager) : void
      {
         _communication = param1;
      }
      
      public function set connection(param1:IConnection) : void
      {
         _connection = param1;
      }
   }
}
