package com.sulake.habbo.toolbar
{
   public class MenuSettingsItem
   {
       
      
      private var var_1569:Array;
      
      private var var_1568:String;
      
      private var var_1567:Boolean;
      
      public function MenuSettingsItem(param1:String, param2:Array = null, param3:Boolean = false)
      {
         super();
         var_1568 = param1;
         var_1569 = param2;
         var_1567 = param3;
      }
      
      public function get menuId() : String
      {
         return var_1568;
      }
      
      public function get yieldList() : Array
      {
         return var_1569;
      }
      
      public function get lockToIcon() : Boolean
      {
         return var_1567;
      }
   }
}
