package com.sulake.habbo.catalog.purse
{
   public class Purse implements IPurse
   {
       
      
      private var var_2144:int = 0;
      
      private var var_2151:int = 0;
      
      private var var_1831:int = 0;
      
      private var var_2145:int = 0;
      
      public function Purse()
      {
         super();
      }
      
      public function get pixels() : int
      {
         return var_2151;
      }
      
      public function set pixels(param1:int) : void
      {
         var_2151 = param1;
      }
      
      public function set clubDays(param1:int) : void
      {
         var_2144 = param1;
      }
      
      public function get credits() : int
      {
         return var_1831;
      }
      
      public function get clubDays() : int
      {
         return var_2144;
      }
      
      public function set clubPeriods(param1:int) : void
      {
         var_2145 = param1;
      }
      
      public function set credits(param1:int) : void
      {
         var_1831 = param1;
      }
      
      public function get clubPeriods() : int
      {
         return var_2145;
      }
   }
}
