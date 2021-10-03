package com.sulake.core.runtime.exceptions
{
   public class Exception extends Error
   {
       
      
      private var var_1422:String;
      
      public function Exception(param1:String, param2:String = "")
      {
         var_1422 = param2;
         super(param1);
      }
      
      override public function getStackTrace() : String
      {
         return var_1422 != "" ? var_1422 : super.getStackTrace();
      }
      
      public function toString() : String
      {
         return "Exception: " + super.message;
      }
   }
}
