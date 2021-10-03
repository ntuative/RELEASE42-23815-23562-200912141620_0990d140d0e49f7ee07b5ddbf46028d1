package com.sulake.habbo.communication.messages.incoming.friendlist
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class HabboSearchResultData
   {
       
      
      private var var_2214:Boolean;
      
      private var var_2213:int;
      
      private var var_2216:Boolean;
      
      private var var_1374:String;
      
      private var var_1105:String;
      
      private var var_1825:int;
      
      private var var_1739:String;
      
      private var var_2215:String;
      
      private var var_1738:String;
      
      public function HabboSearchResultData(param1:IMessageDataWrapper)
      {
         super();
         this.var_1825 = param1.readInteger();
         this.var_1374 = param1.readString();
         this.var_1739 = param1.readString();
         this.var_2214 = param1.readBoolean();
         this.var_2216 = param1.readBoolean();
         param1.readString();
         this.var_2213 = param1.readInteger();
         this.var_1738 = param1.readString();
         this.var_2215 = param1.readString();
         this.var_1105 = param1.readString();
      }
      
      public function get realName() : String
      {
         return this.var_1105;
      }
      
      public function get avatarName() : String
      {
         return this.var_1374;
      }
      
      public function get avatarId() : int
      {
         return this.var_1825;
      }
      
      public function get isAvatarOnline() : Boolean
      {
         return this.var_2214;
      }
      
      public function get lastOnlineDate() : String
      {
         return this.var_2215;
      }
      
      public function get avatarFigure() : String
      {
         return this.var_1738;
      }
      
      public function get canFollow() : Boolean
      {
         return this.var_2216;
      }
      
      public function get avatarMotto() : String
      {
         return this.var_1739;
      }
      
      public function get avatarGender() : int
      {
         return this.var_2213;
      }
   }
}
