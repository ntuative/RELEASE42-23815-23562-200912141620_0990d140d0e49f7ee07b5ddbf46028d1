package com.sulake.habbo.communication.messages.parser.room.pets
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.communication.messages.IMessageParser;
   
   public class PetInfoMessageParser implements IMessageParser
   {
       
      
      private var var_1532:int;
      
      private var var_549:String;
      
      private var var_1541:int;
      
      private var var_1592:int;
      
      private var var_1539:int;
      
      private var var_2000:int;
      
      private var _nutrition:int;
      
      private var var_1224:int;
      
      private var var_2001:int;
      
      private var var_1999:int;
      
      private var _energy:int;
      
      private var _name:String;
      
      private var _ownerName:String;
      
      private var var_1537:int;
      
      private var var_1998:int;
      
      public function PetInfoMessageParser()
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
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get maxEnergy() : int
      {
         return var_2000;
      }
      
      public function flush() : Boolean
      {
         var_1224 = -1;
         return true;
      }
      
      public function get maxLevel() : int
      {
         return var_2001;
      }
      
      public function get experienceRequiredToLevel() : int
      {
         return var_1999;
      }
      
      public function get maxNutrition() : int
      {
         return var_1998;
      }
      
      public function get figure() : String
      {
         return var_549;
      }
      
      public function get ownerName() : String
      {
         return _ownerName;
      }
      
      public function get respect() : int
      {
         return var_1592;
      }
      
      public function get petId() : int
      {
         return var_1224;
      }
      
      public function parse(param1:IMessageDataWrapper) : Boolean
      {
         if(param1 == null)
         {
            return false;
         }
         var_1224 = param1.readInteger();
         _name = param1.readString();
         var_1541 = param1.readInteger();
         var_2001 = param1.readInteger();
         var_1539 = param1.readInteger();
         var_1999 = param1.readInteger();
         _energy = param1.readInteger();
         var_2000 = param1.readInteger();
         _nutrition = param1.readInteger();
         var_1998 = param1.readInteger();
         var_549 = param1.readString();
         var_1592 = param1.readInteger();
         var_1537 = param1.readInteger();
         var_1532 = param1.readInteger();
         _ownerName = param1.readString();
         return true;
      }
      
      public function get nutrition() : int
      {
         return _nutrition;
      }
      
      public function get experience() : int
      {
         return var_1539;
      }
      
      public function get ownerId() : int
      {
         return var_1537;
      }
      
      public function get age() : int
      {
         return var_1532;
      }
   }
}
