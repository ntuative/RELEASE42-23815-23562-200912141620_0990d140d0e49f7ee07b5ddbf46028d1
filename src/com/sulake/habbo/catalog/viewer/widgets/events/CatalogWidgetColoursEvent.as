package com.sulake.habbo.catalog.viewer.widgets.events
{
   import flash.events.Event;
   
   public class CatalogWidgetColoursEvent extends Event
   {
       
      
      private var var_1266:Array;
      
      private var var_1595:String;
      
      private var var_1597:String;
      
      private var var_1596:String;
      
      public function CatalogWidgetColoursEvent(param1:Array, param2:String, param3:String, param4:String, param5:Boolean = false, param6:Boolean = false)
      {
         super(WidgetEvent.CWE_COLOUR_ARRAY,param5,param6);
         var_1266 = param1;
         var_1595 = param2;
         var_1597 = param3;
         var_1596 = param4;
      }
      
      public function get colours() : Array
      {
         return var_1266;
      }
      
      public function get backgroundAssetName() : String
      {
         return var_1595;
      }
      
      public function get colourAssetName() : String
      {
         return var_1597;
      }
      
      public function get chosenColourAssetName() : String
      {
         return var_1596;
      }
   }
}
