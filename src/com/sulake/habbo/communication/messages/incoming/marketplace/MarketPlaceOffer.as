package com.sulake.habbo.communication.messages.incoming.marketplace
{
   public class MarketPlaceOffer
   {
       
      
      private var var_1081:int;
      
      private var var_1611:int = -1;
      
      private var var_353:int;
      
      private var _furniType:int;
      
      private var var_1613:int;
      
      private var _offerId:int;
      
      public function MarketPlaceOffer(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int)
      {
         super();
         _offerId = param1;
         var_1613 = param2;
         _furniType = param3;
         var_1081 = param4;
         var_353 = param5;
         var_1611 = param6;
      }
      
      public function get furniId() : int
      {
         return var_1613;
      }
      
      public function get status() : int
      {
         return var_353;
      }
      
      public function get furniType() : int
      {
         return _furniType;
      }
      
      public function get price() : int
      {
         return var_1081;
      }
      
      public function get timeLeftMinutes() : int
      {
         return var_1611;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
   }
}
