package com.sulake.core.localization
{
   public class LocalizationDefinition implements ILocalizationDefinition
   {
       
      
      private var _name:String;
      
      private var var_1335:String;
      
      private var var_871:String;
      
      private var var_1333:String;
      
      private var var_1334:String;
      
      public function LocalizationDefinition(param1:String, param2:String, param3:String)
      {
         super();
         var _loc4_:Array = param1.split("_");
         var_1334 = _loc4_[0];
         var _loc5_:Array = String(_loc4_[1]).split(".");
         var_1335 = _loc5_[0];
         var_1333 = _loc5_[1];
         _name = param2;
         var_871 = param3;
      }
      
      public function get countryCode() : String
      {
         return var_1335;
      }
      
      public function get languageCode() : String
      {
         return var_1334;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get url() : String
      {
         return var_871;
      }
      
      public function get encoding() : String
      {
         return var_1333;
      }
      
      public function get id() : String
      {
         return var_1334 + "_" + var_1335 + "." + var_1333;
      }
   }
}
