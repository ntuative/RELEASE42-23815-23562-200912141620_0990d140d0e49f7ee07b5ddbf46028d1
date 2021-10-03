package com.sulake.habbo.inventory.purse
{
   public class Purse
   {
       
      
      private var var_2141:Boolean = false;
      
      private var var_2143:int = 0;
      
      private var var_2144:int = 0;
      
      private var var_2142:int = 0;
      
      private var var_1511:int = 0;
      
      private var var_2145:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function set creditBalance(param1:int) : void
      {
         var_1511 = Math.max(0,param1);
      }
      
      public function get clubPastPeriods() : int
      {
         return var_2143;
      }
      
      public function get clubHasEverBeenMember() : Boolean
      {
         return var_2141;
      }
      
      public function set clubHasEverBeenMember(param1:Boolean) : void
      {
         var_2141 = param1;
      }
      
      public function set clubPastPeriods(param1:int) : void
      {
         var_2143 = Math.max(0,param1);
      }
      
      public function set clubDays(param1:int) : void
      {
         var_2144 = Math.max(0,param1);
      }
      
      public function get creditBalance() : int
      {
         return var_1511;
      }
      
      public function set pixelBalance(param1:int) : void
      {
         var_2142 = Math.max(0,param1);
      }
      
      public function get clubDays() : int
      {
         return var_2144;
      }
      
      public function get pixelBalance() : int
      {
         return var_2142;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_2145 = Math.max(0,param1);
      }
      
      public function get clubPeriods() : int
      {
         return var_2145;
      }
   }
}
