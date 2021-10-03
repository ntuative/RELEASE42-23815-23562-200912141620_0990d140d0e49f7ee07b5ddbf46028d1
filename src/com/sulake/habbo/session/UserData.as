package com.sulake.habbo.session
{
   public class UserData implements IUserData
   {
       
      
      private var var_549:String = "";
      
      private var var_1820:String = "";
      
      private var var_1823:int = 0;
      
      private var var_1821:int = 0;
      
      private var _type:int = 0;
      
      private var var_1824:String = "";
      
      private var var_1144:String = "";
      
      private var _id:int = -1;
      
      private var _name:String = "";
      
      private var var_1822:int = 0;
      
      public function UserData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function set groupStatus(param1:int) : void
      {
         var_1823 = param1;
      }
      
      public function set groupID(param1:String) : void
      {
         var_1824 = param1;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set figure(param1:String) : void
      {
         var_549 = param1;
      }
      
      public function set sex(param1:String) : void
      {
         var_1144 = param1;
      }
      
      public function get groupStatus() : int
      {
         return var_1823;
      }
      
      public function set webID(param1:int) : void
      {
         var_1822 = param1;
      }
      
      public function get groupID() : String
      {
         return var_1824;
      }
      
      public function set custom(param1:String) : void
      {
         var_1820 = param1;
      }
      
      public function get figure() : String
      {
         return var_549;
      }
      
      public function get sex() : String
      {
         return var_1144;
      }
      
      public function get custom() : String
      {
         return var_1820;
      }
      
      public function get webID() : int
      {
         return var_1822;
      }
      
      public function set xp(param1:int) : void
      {
         var_1821 = param1;
      }
      
      public function set type(param1:int) : void
      {
         _type = param1;
      }
      
      public function get xp() : int
      {
         return var_1821;
      }
   }
}
