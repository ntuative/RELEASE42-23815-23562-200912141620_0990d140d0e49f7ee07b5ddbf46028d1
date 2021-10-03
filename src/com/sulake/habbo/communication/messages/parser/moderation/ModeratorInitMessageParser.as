package com.sulake.habbo.communication.messages.parser.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   import com.sulake.habbo.communication.messages.incoming.moderation.OffenceCategoryData;
   
   public class ModeratorInitMessageParser implements IMessageParser
   {
       
      
      private var _roomMessageTemplates:Array;
      
      private var var_2098:Boolean;
      
      private var var_1498:Array;
      
      private var var_2097:Boolean;
      
      private var var_2099:Boolean;
      
      private var var_2100:Boolean;
      
      private var var_158:Array;
      
      private var var_2102:Boolean;
      
      private var var_2103:Boolean;
      
      private var var_1497:Array;
      
      private var var_2096:Boolean;
      
      private var var_2101:Boolean;
      
      public function ModeratorInitMessageParser()
      {
         super();
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get banPermission() : Boolean
      {
         return var_2101;
      }
      
      public function get roomKickPermission() : Boolean
      {
         return var_2098;
      }
      
      public function get alertPermission() : Boolean
      {
         return var_2097;
      }
      
      public function get cfhPermission() : Boolean
      {
         return var_2102;
      }
      
      public function get roomMessageTemplates() : Array
      {
         return _roomMessageTemplates;
      }
      
      public function get roomAlertPermission() : Boolean
      {
         return var_2103;
      }
      
      public function get messageTemplates() : Array
      {
         return var_1498;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         var _loc2_:IssueInfoMessageParser = new IssueInfoMessageParser();
         var_158 = [];
         var_1498 = [];
         _roomMessageTemplates = [];
         var_1497 = [];
         var _loc3_:int = param1.readInteger();
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_)
         {
            if(!_loc2_.parse(param1))
            {
               return false;
            }
            var_158.push(_loc2_.issueData);
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1498.push(param1.readString());
            _loc4_++;
         }
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            var_1497.push(new OffenceCategoryData(param1));
            _loc4_++;
         }
         var_2102 = param1.readBoolean();
         var_2100 = param1.readBoolean();
         var_2097 = param1.readBoolean();
         var_2099 = param1.readBoolean();
         var_2101 = param1.readBoolean();
         var_2103 = param1.readBoolean();
         var_2098 = param1.readBoolean();
         _loc3_ = param1.readInteger();
         _loc4_ = 0;
         while(_loc4_ < _loc3_)
         {
            _roomMessageTemplates.push(param1.readString());
            _loc4_++;
         }
         var_2096 = param1.readBoolean();
         return true;
      }
      
      public function get kickPermission() : Boolean
      {
         return var_2099;
      }
      
      public function get offenceCategories() : Array
      {
         return var_1497;
      }
      
      public function get issues() : Array
      {
         return var_158;
      }
      
      public function get bobbaFilterPermission() : Boolean
      {
         return var_2096;
      }
      
      public function get chatlogsPermission() : Boolean
      {
         return var_2100;
      }
   }
}
