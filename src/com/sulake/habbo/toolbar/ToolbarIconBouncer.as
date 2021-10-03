package com.sulake.habbo.toolbar
{
   public class ToolbarIconBouncer
   {
       
      
      private var var_1900:Number;
      
      private var var_539:Number = 0;
      
      private var var_1901:Number;
      
      private var var_540:Number;
      
      public function ToolbarIconBouncer(param1:Number, param2:Number)
      {
         super();
         var_1900 = param1;
         var_1901 = param2;
      }
      
      public function update() : void
      {
         var_540 += var_1901;
         var_539 += var_540;
         if(var_539 > 0)
         {
            var_539 = 0;
            var_540 = var_1900 * -1 * var_540;
         }
      }
      
      public function reset(param1:int) : void
      {
         var_540 = param1;
         var_539 = 0;
      }
      
      public function get location() : Number
      {
         return var_539;
      }
   }
}
