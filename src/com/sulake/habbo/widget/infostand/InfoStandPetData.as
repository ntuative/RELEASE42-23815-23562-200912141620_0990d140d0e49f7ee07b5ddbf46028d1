package com.sulake.habbo.widget.infostand
{
   import com.sulake.habbo.widget.events.RoomWidgetPetInfoUpdateEvent;
   import flash.display.BitmapData;
   
   public class InfoStandPetData
   {
       
      
      private var var_1541:int;
      
      private var var_1539:int;
      
      private var var_1535:int;
      
      private var _type:int;
      
      private var var_1224:int = -1;
      
      private var var_1540:int;
      
      private var _nutrition:int;
      
      private var var_1531:int;
      
      private var _energy:int;
      
      private var var_1538:int;
      
      private var var_1534:int;
      
      private var var_1533:int;
      
      private var var_1532:int;
      
      private var _petRespect:int;
      
      private var _canOwnerBeKicked:Boolean;
      
      private var _image:BitmapData;
      
      private var _ownerName:String;
      
      private var var_1536:Boolean;
      
      private var _name:String = "";
      
      private var var_1537:int;
      
      public function InfoStandPetData()
      {
         super();
      }
      
      public function get isOwnPet() : Boolean
      {
         return var_1536;
      }
      
      public function get level() : int
      {
         return var_1541;
      }
      
      public function get energy() : int
      {
         return _energy;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get experienceMax() : int
      {
         return var_1531;
      }
      
      public function get id() : int
      {
         return var_1224;
      }
      
      public function get nutritionMax() : int
      {
         return var_1535;
      }
      
      public function get ownerId() : int
      {
         return var_1537;
      }
      
      public function setData(param1:RoomWidgetPetInfoUpdateEvent) : void
      {
         _name = param1.name;
         var_1224 = param1.id;
         _type = param1.petType;
         var_1538 = param1.petRace;
         _image = param1.image;
         var_1536 = param1.isOwnPet;
         var_1537 = param1.ownerId;
         _ownerName = param1.ownerName;
         _canOwnerBeKicked = param1.canOwnerBeKicked;
         var_1541 = param1.level;
         var_1540 = param1.levelMax;
         var_1539 = param1.experience;
         var_1531 = param1.experienceMax;
         _energy = param1.energy;
         var_1534 = param1.energyMax;
         _nutrition = param1.nutrition;
         var_1535 = param1.nutritionMax;
         _petRespect = param1.petRespect;
         var_1533 = param1.roomIndex;
         var_1532 = param1.age;
      }
      
      public function get roomIndex() : int
      {
         return var_1533;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get energyMax() : int
      {
         return var_1534;
      }
      
      public function get levelMax() : int
      {
         return var_1540;
      }
      
      public function get petRespect() : int
      {
         return _petRespect;
      }
      
      public function get race() : int
      {
         return var_1538;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get canOwnerBeKicked() : Boolean
      {
         return _canOwnerBeKicked;
      }
      
      public function get experience() : int
      {
         return var_1539;
      }
      
      public function get age() : int
      {
         return var_1532;
      }
   }
}
