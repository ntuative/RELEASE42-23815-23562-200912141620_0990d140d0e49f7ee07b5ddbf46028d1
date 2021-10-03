package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserMessageData
   {
      
      public static const const_1243:String = "F";
      
      public static const const_900:String = "M";
       
      
      private var var_92:Number = 0;
      
      private var var_549:String = "";
      
      private var var_2045:int = 0;
      
      private var var_1820:String = "";
      
      private var var_1823:int = 0;
      
      private var var_1821:int = 0;
      
      private var var_1824:String = "";
      
      private var var_1144:String = "";
      
      private var _id:int = 0;
      
      private var var_203:Boolean = false;
      
      private var var_238:int = 0;
      
      private var var_2044:String = "";
      
      private var _name:String = "";
      
      private var var_1822:int = 0;
      
      private var _y:Number = 0;
      
      private var var_91:Number = 0;
      
      public function UserMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get z() : Number
      {
         return var_91;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get dir() : int
      {
         return var_238;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_203)
         {
            var_238 = param1;
         }
      }
      
      public function set name(param1:String) : void
      {
         if(!var_203)
         {
            _name = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get userType() : int
      {
         return var_2045;
      }
      
      public function set groupStatus(param1:int) : void
      {
         if(!var_203)
         {
            var_1823 = param1;
         }
      }
      
      public function get subType() : String
      {
         return var_2044;
      }
      
      public function set groupID(param1:String) : void
      {
         if(!var_203)
         {
            var_1824 = param1;
         }
      }
      
      public function set subType(param1:String) : void
      {
         if(!var_203)
         {
            var_2044 = param1;
         }
      }
      
      public function set xp(param1:int) : void
      {
         if(!var_203)
         {
            var_1821 = param1;
         }
      }
      
      public function set figure(param1:String) : void
      {
         if(!var_203)
         {
            var_549 = param1;
         }
      }
      
      public function set userType(param1:int) : void
      {
         if(!var_203)
         {
            var_2045 = param1;
         }
      }
      
      public function set sex(param1:String) : void
      {
         if(!var_203)
         {
            var_1144 = param1;
         }
      }
      
      public function get groupStatus() : int
      {
         return var_1823;
      }
      
      public function get groupID() : String
      {
         return var_1824;
      }
      
      public function set webID(param1:int) : void
      {
         if(!var_203)
         {
            var_1822 = param1;
         }
      }
      
      public function set custom(param1:String) : void
      {
         if(!var_203)
         {
            var_1820 = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_203 = true;
      }
      
      public function get sex() : String
      {
         return var_1144;
      }
      
      public function get figure() : String
      {
         return var_549;
      }
      
      public function get webID() : int
      {
         return var_1822;
      }
      
      public function get custom() : String
      {
         return var_1820;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_203)
         {
            _y = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_203)
         {
            var_91 = param1;
         }
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_203)
         {
            var_92 = param1;
         }
      }
      
      public function get x() : Number
      {
         return var_92;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get xp() : int
      {
         return var_1821;
      }
   }
}
