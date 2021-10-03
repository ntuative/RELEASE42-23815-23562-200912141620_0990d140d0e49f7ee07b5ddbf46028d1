package com.sulake.habbo.communication.messages.incoming.roomsettings
{
   public class RoomSettingsData
   {
      
      public static const const_414:int = 0;
      
      public static const const_126:int = 2;
      
      public static const const_154:int = 1;
      
      public static const const_722:Array = ["open","closed","password"];
       
      
      private var _name:String;
      
      private var var_2139:int;
      
      private var var_2140:int;
      
      private var var_1645:Array;
      
      private var var_1646:Boolean;
      
      private var var_1648:Boolean;
      
      private var var_1066:String;
      
      private var var_1631:Boolean;
      
      private var var_1647:int;
      
      private var var_1632:int;
      
      private var var_1065:int;
      
      private var var_1633:Boolean;
      
      private var _roomId:int;
      
      private var var_1634:Boolean;
      
      private var var_582:Array;
      
      public function RoomSettingsData()
      {
         super();
      }
      
      public function get maximumVisitors() : int
      {
         return var_1647;
      }
      
      public function set maximumVisitors(param1:int) : void
      {
         var_1647 = param1;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set name(param1:String) : void
      {
         _name = param1;
      }
      
      public function get tags() : Array
      {
         return var_582;
      }
      
      public function get allowPets() : Boolean
      {
         return var_1648;
      }
      
      public function get allowTrading() : Boolean
      {
         return var_1634;
      }
      
      public function set controllerCount(param1:int) : void
      {
         var_2139 = param1;
      }
      
      public function set roomId(param1:int) : void
      {
         _roomId = param1;
      }
      
      public function set controllers(param1:Array) : void
      {
         var_1645 = param1;
      }
      
      public function set tags(param1:Array) : void
      {
         var_582 = param1;
      }
      
      public function get allowFoodConsume() : Boolean
      {
         return var_1646;
      }
      
      public function get maximumVisitorsLimit() : int
      {
         return var_2140;
      }
      
      public function get categoryId() : int
      {
         return var_1065;
      }
      
      public function set allowPets(param1:Boolean) : void
      {
         var_1648 = param1;
      }
      
      public function set allowTrading(param1:Boolean) : void
      {
         var_1634 = param1;
      }
      
      public function set showOwnerName(param1:Boolean) : void
      {
         var_1633 = param1;
      }
      
      public function set allowFurniMoving(param1:Boolean) : void
      {
         var_1631 = param1;
      }
      
      public function get controllerCount() : int
      {
         return var_2139;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function get controllers() : Array
      {
         return var_1645;
      }
      
      public function get showOwnerName() : Boolean
      {
         return var_1633;
      }
      
      public function get allowFurniMoving() : Boolean
      {
         return var_1631;
      }
      
      public function set doorMode(param1:int) : void
      {
         var_1632 = param1;
      }
      
      public function set allowFoodConsume(param1:Boolean) : void
      {
         var_1646 = param1;
      }
      
      public function set maximumVisitorsLimit(param1:int) : void
      {
         var_2140 = param1;
      }
      
      public function get doorMode() : int
      {
         return var_1632;
      }
      
      public function set categoryId(param1:int) : void
      {
         var_1065 = param1;
      }
      
      public function set description(param1:String) : void
      {
         var_1066 = param1;
      }
      
      public function get description() : String
      {
         return var_1066;
      }
   }
}
