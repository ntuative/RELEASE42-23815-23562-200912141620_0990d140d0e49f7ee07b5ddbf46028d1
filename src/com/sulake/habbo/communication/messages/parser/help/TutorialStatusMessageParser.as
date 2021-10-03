package com.sulake.habbo.communication.messages.parser.help
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class TutorialStatusMessageParser implements IMessageParser
   {
       
      
      private var var_965:Boolean;
      
      private var var_964:Boolean;
      
      private var var_963:Boolean;
      
      public function TutorialStatusMessageParser()
      {
         super();
      }
      
      public function get hasCalledGuideBot() : Boolean
      {
         return var_965;
      }
      
      public function get hasChangedName() : Boolean
      {
         return var_964;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var_963 = param1.readBoolean();
         var_964 = param1.readBoolean();
         var_965 = param1.readBoolean();
         return true;
      }
      
      public function get hasChangedLooks() : Boolean
      {
         return var_963;
      }
      
      public function flush() : Boolean
      {
         var_963 = false;
         var_964 = false;
         var_965 = false;
         return true;
      }
   }
}
