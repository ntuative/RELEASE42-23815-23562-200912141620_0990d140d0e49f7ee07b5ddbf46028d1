package com.sulake.habbo.catalog.viewer
{
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageOfferData;
   import com.sulake.habbo.communication.messages.incoming.catalog.CatalogPageMessageProductData;
   import com.sulake.habbo.session.furniture.IFurnitureData;
   import com.sulake.habbo.session.product.IProductData;
   
   public class Offer
   {
      
      public static const const_970:String = "price_type_none";
      
      public static const const_445:String = "pricing_model_multi";
      
      public static const const_279:String = "price_type_credits";
      
      public static const const_455:String = "price_type_credits_and_pixels";
      
      public static const const_408:String = "pricing_model_bundle";
      
      public static const const_450:String = "pricing_model_single";
      
      public static const const_495:String = "price_type_credits_or_credits_and_pixels";
      
      public static const const_1250:String = "pricing_model_unknown";
      
      public static const const_470:String = "price_type_pixels";
       
      
      private var var_834:int;
      
      private var _offerId:int;
      
      private var var_835:int;
      
      private var var_395:String;
      
      private var var_559:String;
      
      private var var_2031:int;
      
      private var var_661:ICatalogPage;
      
      private var var_1248:String;
      
      private var var_396:IProductContainer;
      
      public function Offer(param1:CatalogPageMessageOfferData, param2:ICatalogPage)
      {
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         var _loc7_:* = null;
         super();
         _offerId = param1.offerId;
         var_1248 = param1.localizationId;
         var_834 = param1.priceInCredits;
         var_835 = param1.priceInPixels;
         var_661 = param2;
         var _loc3_:Array = new Array();
         for each(_loc4_ in param1.products)
         {
            _loc5_ = param2.viewer.catalog.getProductData(_loc4_.productType);
            _loc6_ = param2.viewer.catalog.getFurnitureData(_loc4_.furniClassId,_loc4_.productType);
            _loc7_ = new Product(_loc4_,_loc5_,_loc6_);
            _loc3_.push(_loc7_);
         }
         analyzePricingModel(_loc3_);
         analyzePriceType();
         createProductContainer(_loc3_);
      }
      
      public function get pricingModel() : String
      {
         return var_395;
      }
      
      public function get page() : ICatalogPage
      {
         return var_661;
      }
      
      public function set previewCallbackId(param1:int) : void
      {
         var_2031 = param1;
      }
      
      public function get productContainer() : IProductContainer
      {
         return var_396;
      }
      
      public function get localizationId() : String
      {
         return var_1248;
      }
      
      public function get offerId() : int
      {
         return _offerId;
      }
      
      public function get priceInPixels() : int
      {
         return var_835;
      }
      
      public function dispose() : void
      {
         _offerId = 0;
         var_1248 = "";
         var_834 = 0;
         var_835 = 0;
         var_661 = null;
         if(var_396 != null)
         {
            var_396.dispose();
            var_396 = null;
         }
      }
      
      public function get priceType() : String
      {
         return var_559;
      }
      
      public function get previewCallbackId() : int
      {
         return var_2031;
      }
      
      public function get priceInCredits() : int
      {
         return var_834;
      }
      
      private function analyzePricingModel(param1:Array) : void
      {
         var _loc2_:* = null;
         if(param1.length == 1)
         {
            _loc2_ = param1[0];
            if(_loc2_.productCount == 1)
            {
               var_395 = const_450;
            }
            else
            {
               var_395 = const_445;
            }
         }
         else if(param1.length > 1)
         {
            var_395 = const_408;
         }
         else
         {
            var_395 = const_1250;
         }
      }
      
      private function createProductContainer(param1:Array) : void
      {
         switch(var_395)
         {
            case const_450:
               var_396 = new SingleProductContainer(this,param1);
               break;
            case const_445:
               var_396 = new MultiProductContainer(this,param1);
               break;
            case const_408:
               var_396 = new BundleProductContainer(this,param1);
               break;
            default:
               Logger.log("[Offer] Unknown pricing model" + var_395);
         }
      }
      
      private function analyzePriceType() : void
      {
         if(var_834 > 0 && var_835 > 0)
         {
            var_559 = const_455;
         }
         else if(var_834 > 0)
         {
            var_559 = const_279;
         }
         else if(var_835 > 0)
         {
            var_559 = const_470;
         }
         else
         {
            var_559 = const_970;
         }
      }
   }
}
