package com.sulake.habbo.session
{
   public class PetInfo implements IPetInfo
   {
       
      
      private var var_1541:int;
      
      private var var_1592:int;
      
      private var var_1539:int;
      
      private var var_1535:int;
      
      private var _nutrition:int;
      
      private var var_1224:int;
      
      private var var_1540:int;
      
      private var var_1531:int;
      
      private var _energy:int;
      
      private var var_1532:int;
      
      private var var_1534:int;
      
      private var _ownerName:String;
      
      private var var_1537:int;
      
      public function PetInfo()
      {
         super();
      }
      
      public function get level() : int
      {
         return var_1541;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function set respect(param1:int) : void
      {
         var_1592 = param1;
      }
      
      public function set energy(param1:int) : void
      {
         _energy = param1;
      }
      
      public function set level(param1:int) : void
      {
         var_1541 = param1;
      }
      
      public function get petId() : int
      {
         return var_1224;
      }
      
      public function get experienceMax() : int
      {
         return var_1531;
      }
      
      public function get nutritionMax() : int
      {
         return var_1535;
      }
      
      public function set levelMax(param1:int) : void
      {
         var_1540 = param1;
      }
      
      public function get ownerId() : int
      {
         return var_1537;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function set petId(param1:int) : void
      {
         var_1224 = param1;
      }
      
      public function set nutrition(param1:int) : void
      {
         _nutrition = param1;
      }
      
      public function get energyMax() : int
      {
         return var_1534;
      }
      
      public function get respect() : int
      {
         return var_1592;
      }
      
      public function get levelMax() : int
      {
         return var_1540;
      }
      
      public function set ownerName(param1:String) : void
      {
         _ownerName = param1;
      }
      
      public function set experienceMax(param1:int) : void
      {
         var_1531 = param1;
      }
      
      public function set experience(param1:int) : void
      {
         var_1539 = param1;
      }
      
      public function set nutritionMax(param1:int) : void
      {
         var_1535 = param1;
      }
      
      public function set ownerId(param1:int) : void
      {
         var_1537 = param1;
      }
      
      public function get experience() : int
      {
         return var_1539;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function set energyMax(param1:int) : void
      {
         var_1534 = param1;
      }
      
      public function set age(param1:int) : void
      {
         var_1532 = param1;
      }
      
      public function get age() : int
      {
         return var_1532;
      }
   }
}
