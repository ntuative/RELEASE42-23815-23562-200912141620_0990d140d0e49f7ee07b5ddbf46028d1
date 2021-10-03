package com.sulake.habbo.catalog.viewer.widgets
{
   import com.sulake.core.assets.XmlAsset;
   import com.sulake.core.localization.ICoreLocalizationManager;
   import com.sulake.core.window.IWindowContainer;
   import com.sulake.core.window.components.IButtonWindow;
   import com.sulake.core.window.components.ITextWindow;
   import com.sulake.core.window.events.WindowMouseEvent;
   import com.sulake.habbo.catalog.HabboCatalog;
   import com.sulake.habbo.catalog.viewer.Offer;
   import com.sulake.habbo.catalog.viewer.widgets.events.SelectProductEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.SetExtraPurchaseParameterEvent;
   import com.sulake.habbo.catalog.viewer.widgets.events.WidgetEvent;
   
   public class PurchaseCatalogWidget extends CatalogWidget implements ICatalogWidget
   {
       
      
      private var var_1917:XML;
      
      private var var_1410:ITextWindow;
      
      private var var_1409:ITextWindow;
      
      private var var_1915:XML;
      
      private var var_799:IWindowContainer;
      
      private var var_2223:ITextWindow;
      
      private var var_1914:String = "";
      
      private var var_2277:IButtonWindow;
      
      private var var_1918:XML;
      
      private var var_1411:ITextWindow;
      
      private var var_1916:XML;
      
      private var var_800:IButtonWindow;
      
      private var var_171:Offer;
      
      public function PurchaseCatalogWidget(param1:IWindowContainer)
      {
         super(param1);
      }
      
      private function attachStub(param1:String) : void
      {
         var _loc2_:* = null;
         switch(param1)
         {
            case Offer.const_279:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1915) as IWindowContainer;
               break;
            case Offer.const_470:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1916) as IWindowContainer;
               break;
            case Offer.const_455:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1917) as IWindowContainer;
               break;
            case Offer.const_495:
               _loc2_ = page.viewer.catalog.windowManager.buildFromXML(var_1918) as IWindowContainer;
               break;
            default:
               Logger.log("Unknown price-type, can\'t attach...undefined");
         }
         if(_loc2_ != null)
         {
            if(var_799 != null)
            {
               _window.removeChild(var_799);
               var_799.dispose();
            }
            var_799 = _loc2_;
            _window.addChild(_loc2_);
            var_799.x = 0;
            var_799.y = 0;
         }
         var_1411 = _window.findChildByName("ctlg_price_credits") as ITextWindow;
         var_1409 = _window.findChildByName("ctlg_price_pixels") as ITextWindow;
         var_1410 = _window.findChildByName("ctlg_price_credits_pixels") as ITextWindow;
         var_2223 = _window.findChildByName("ctlg_special_txt") as ITextWindow;
         var_800 = window.findChildByName("ctlg_buy_button") as IButtonWindow;
         if(var_800 != null)
         {
            var_800.addEventListener(WindowMouseEvent.WINDOW_EVENT_MOUSE_CLICK,onPurchase);
            var_800.disable();
         }
      }
      
      private function onPurchase(param1:WindowMouseEvent) : void
      {
         if(var_171 != null)
         {
            Logger.log("Init Purchase: undefined undefined");
            (page.viewer.catalog as HabboCatalog).showPurchaseConfirmation(var_171,page,var_1914);
         }
      }
      
      override public function init() : void
      {
         var _loc1_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsStub") as XmlAsset;
         if(_loc1_ != null)
         {
            var_1915 = _loc1_.content as XML;
         }
         var _loc2_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetPixelsStub") as XmlAsset;
         if(_loc2_ != null)
         {
            var_1916 = _loc2_.content as XML;
         }
         var _loc3_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsPixelsStub") as XmlAsset;
         if(_loc3_ != null)
         {
            var_1917 = _loc3_.content as XML;
         }
         var _loc4_:XmlAsset = page.viewer.catalog.assets.getAssetByName("purchaseWidgetCreditsOrCreditsAndPixelsStub") as XmlAsset;
         if(_loc4_ != null)
         {
            var_1918 = _loc4_.content as XML;
         }
         events.addEventListener(WidgetEvent.CWE_SELECT_PRODUCT,onSelectProduct);
         events.addEventListener(WidgetEvent.const_846,onSetParameter);
      }
      
      private function onSetParameter(param1:SetExtraPurchaseParameterEvent) : void
      {
         var_1914 = param1.parameter;
      }
      
      private function onSelectProduct(param1:SelectProductEvent) : void
      {
         var _loc2_:ICoreLocalizationManager = (page.viewer.catalog as HabboCatalog).localization;
         var_171 = param1.offer;
         attachStub(var_171.priceType);
         if(var_1411 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits","credits",String(var_171.priceInCredits));
            var_1411.caption = "${catalog.purchase.price.credits}";
         }
         if(var_1409 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.pixels","pixels",String(var_171.priceInPixels));
            var_1409.caption = "${catalog.purchase.price.pixels}";
         }
         if(var_1410 != null)
         {
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","credits",String(var_171.priceInCredits));
            _loc2_.registerParameter("catalog.purchase.price.credits+pixels","pixels",String(var_171.priceInPixels));
            var_1410.caption = "${catalog.purchase.price.credits+pixels}";
         }
         if(var_800 != null)
         {
            var_800.enable();
         }
      }
   }
}
