package com.sulake.habbo.communication.messages.incoming.moderation
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class ModeratorUserInfoData
   {
       
      
      private var var_2067:int;
      
      private var var_2066:int;
      
      private var var_2064:int;
      
      private var _userName:String;
      
      private var var_2065:int;
      
      private var var_2062:int;
      
      private var var_2063:int;
      
      private var _userId:int;
      
      private var var_627:Boolean;
      
      public function ModeratorUserInfoData(param1:IMessageDataWrapper)
      {
         super();
         _userId = param1.readInteger();
         _userName = param1.readString();
         var_2062 = param1.readInteger();
         var_2065 = param1.readInteger();
         var_627 = param1.readBoolean();
         var_2064 = param1.readInteger();
         var_2066 = param1.readInteger();
         var_2067 = param1.readInteger();
         var_2063 = param1.readInteger();
      }
      
      public function get banCount() : int
      {
         return var_2063;
      }
      
      public function get userId() : int
      {
         return _userId;
      }
      
      public function get online() : Boolean
      {
         return var_627;
      }
      
      public function get minutesSinceLastLogin() : int
      {
         return var_2065;
      }
      
      public function get abusiveCfhCount() : int
      {
         return var_2066;
      }
      
      public function get cautionCount() : int
      {
         return var_2067;
      }
      
      public function get cfhCount() : int
      {
         return var_2064;
      }
      
      public function get minutesSinceRegistration() : int
      {
         return var_2062;
      }
      
      public function get userName() : String
      {
         return _userName;
      }
   }
}
