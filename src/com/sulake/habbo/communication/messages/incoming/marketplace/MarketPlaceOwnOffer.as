package com.sulake.habbo.communication.messages.incoming.marketplace
{
   import flash.display.BitmapData;
   
   public class MarketPlaceOwnOffer
   {
      
      public static const const_1450:int = 2;
      
      public static const const_1532:int = 1;
      
      public static const const_1488:int = 0;
       
      
      private var var_1081:int;
      
      private var var_353:int;
      
      private var var_2263:int;
      
      private var _offerId:int;
      
      private var _furniType:int;
      
      private var var_1613:int;
      
      private var _image:BitmapData;
      
      public function MarketPlaceOwnOffer(param1:int, param2:int, param3:int, param4:int)
      {
         super();
         _offerId = param1;
         var_1613 = param2;
         _furniType = param3;
         var_1081 = param4;
      }
      
      public function get furniId() : int
      {
         return var_1613;
      }
      
      public function get furniType() : int
      {
         return _furniType;
      }
      
      public function get price() : int
      {
         return var_1081;
      }
      
      public function set image(param1:BitmapData) : void
      {
         _image = param1;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get image() : BitmapData
      {
         return _image;
      }
   }
}
