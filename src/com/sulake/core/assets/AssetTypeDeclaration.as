package com.sulake.core.assets
{
   public class AssetTypeDeclaration
   {
       
      
      private var var_1544:Class;
      
      private var var_1543:Class;
      
      private var var_1542:String;
      
      private var var_1051:Array;
      
      public function AssetTypeDeclaration(param1:String, param2:Class, param3:Class, ... rest)
      {
         super();
         var_1542 = param1;
         var_1543 = param2;
         var_1544 = param3;
         if(rest == null)
         {
            var_1051 = new Array();
         }
         else
         {
            var_1051 = rest;
         }
      }
      
      public function get loaderClass() : Class
      {
         return var_1544;
      }
      
      public function get assetClass() : Class
      {
         return var_1543;
      }
      
      public function get mimeType() : String
      {
         return var_1542;
      }
      
      public function get fileTypes() : Array
      {
         return var_1051;
      }
   }
}
