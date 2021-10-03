package com.sulake.core.runtime
{
   import flash.utils.getQualifiedClassName;
   
   final class InterfaceStruct
   {
       
      
      private var var_1027:IID;
      
      private var var_409:uint;
      
      private var var_1284:IUnknown;
      
      private var var_1285:String;
      
      function InterfaceStruct(param1:IID, param2:IUnknown)
      {
         super();
         var_1027 = param1;
         var_1285 = getQualifiedClassName(var_1027);
         var_1284 = param2;
         var_409 = 0;
      }
      
      public function get iid() : IID
      {
         return var_1027;
      }
      
      public function get references() : uint
      {
         return var_409;
      }
      
      public function release() : uint
      {
         return references > 0 ? uint(--var_409) : uint(0);
      }
      
      public function get unknown() : IUnknown
      {
         return var_1284;
      }
      
      public function get iis() : String
      {
         return var_1285;
      }
      
      public function reserve() : uint
      {
         return ++var_409;
      }
      
      public function dispose() : void
      {
         var_1027 = null;
         var_1285 = null;
         var_1284 = null;
         var_409 = 0;
      }
   }
}
