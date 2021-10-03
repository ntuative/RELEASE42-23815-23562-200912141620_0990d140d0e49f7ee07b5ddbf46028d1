package com.sulake.habbo.communication.messages.incoming.catalog
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   
   public class CatalogPageMessageProductData
   {
      
      public static const const_263:String = "e";
      
      public static const const_79:String = "i";
      
      public static const const_88:String = "s";
       
      
      private var var_974:String;
      
      private var var_1195:String;
      
      private var var_1193:int;
      
      private var var_1985:int;
      
      private var var_973:int;
      
      public function CatalogPageMessageProductData(param1:IMessageDataWrapper)
      {
         super();
         var_1195 = param1.readString();
         var_1985 = param1.readInteger();
         var_974 = param1.readString();
         var_973 = param1.readInteger();
         var_1193 = param1.readInteger();
      }
      
      public function get productCount() : int
      {
         return var_973;
      }
      
      public function get productType() : String
      {
         return var_1195;
      }
      
      public function get expiration() : int
      {
         return var_1193;
      }
      
      public function get furniClassId() : int
      {
         return var_1985;
      }
      
      public function get extraParam() : String
      {
         return var_974;
      }
   }
}
