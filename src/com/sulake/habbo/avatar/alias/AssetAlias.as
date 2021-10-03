package com.sulake.habbo.avatar.alias
{
   public class AssetAlias
   {
       
      
      private var var_983:Boolean;
      
      private var _name:String;
      
      private var var_1903:String;
      
      private var var_984:Boolean;
      
      public function AssetAlias(param1:XML)
      {
         super();
         _name = String(param1.@name);
         var_1903 = String(param1.@link);
         var_984 = Boolean(parseInt(param1.@fliph));
         var_983 = Boolean(parseInt(param1.@flipv));
      }
      
      public function get flipH() : Boolean
      {
         return var_984;
      }
      
      public function get flipV() : Boolean
      {
         return var_983;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function get link() : String
      {
         return var_1903;
      }
   }
}
