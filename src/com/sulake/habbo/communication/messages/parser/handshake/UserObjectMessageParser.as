package com.sulake.habbo.communication.messages.parser.handshake
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class UserObjectMessageParser implements IMessageParser
   {
       
      
      private var _id:int;
      
      private var var_549:String;
      
      private var var_2206:String;
      
      private var var_2208:int;
      
      private var var_2207:int;
      
      private var var_1144:String;
      
      private var var_1105:String;
      
      private var _name:String;
      
      private var var_765:int;
      
      private var var_763:int;
      
      private var var_2205:int;
      
      private var var_2005:int;
      
      private var var_2209:String;
      
      public function UserObjectMessageParser()
      {
         super();
      }
      
      public function get directMail() : int
      {
         return this.var_2207;
      }
      
      public function flush() : Boolean
      {
         return true;
      }
      
      public function get realName() : String
      {
         return this.var_1105;
      }
      
      public function get customData() : String
      {
         return this.var_2206;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get petRespectLeft() : int
      {
         return this.var_765;
      }
      
      public function get photoFilm() : int
      {
         return this.var_2208;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get poolFigure() : String
      {
         return this.var_2209;
      }
      
      public function get figure() : String
      {
         return this.var_549;
      }
      
      public function get respectTotal() : int
      {
         return this.var_2005;
      }
      
      public function get sex() : String
      {
         return this.var_1144;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         this._id = int(param1.readString());
         this._name = param1.readString();
         this.var_549 = param1.readString();
         this.var_1144 = param1.readString();
         this.var_2206 = param1.readString();
         this.var_1105 = param1.readString();
         this.var_2205 = param1.readInteger();
         this.var_2209 = param1.readString();
         this.var_2208 = param1.readInteger();
         this.var_2207 = param1.readInteger();
         this.var_2005 = param1.readInteger();
         this.var_763 = param1.readInteger();
         this.var_765 = param1.readInteger();
         return true;
      }
      
      public function get tickets() : int
      {
         return this.var_2205;
      }
      
      public function get respectLeft() : int
      {
         return this.var_763;
      }
   }
}
