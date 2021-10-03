package com.sulake.room.renderer.cache
{
   import com.sulake.room.renderer.utils.ExtendedBitmapData;
   import flash.display.BitmapData;
   
   public class BitmapDataCacheItem
   {
       
      
      private var var_475:int = 0;
      
      private var _name:String = "";
      
      private var _bitmapData:BitmapData = null;
      
      public function BitmapDataCacheItem(param1:BitmapData, param2:String)
      {
         super();
         _bitmapData = param1;
         _name = param2;
         var _loc3_:ExtendedBitmapData = _bitmapData as ExtendedBitmapData;
         if(_loc3_ != null)
         {
            _loc3_.method_6();
         }
         var_475 = 1;
      }
      
      public function resetCount() : void
      {
         var_475 = 0;
      }
      
      public function get useCount() : int
      {
         return var_475;
      }
      
      public function get name() : String
      {
         return _name;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         var _loc2_:ExtendedBitmapData = _bitmapData as ExtendedBitmapData;
         if(_loc2_ != null)
         {
            _loc2_.dispose();
         }
         _bitmapData = param1;
         var_475 = 1;
         _loc2_ = _bitmapData as ExtendedBitmapData;
         if(_loc2_ != null)
         {
            _loc2_.method_6();
         }
      }
      
      public function get bitmapData() : BitmapData
      {
         ++var_475;
         return _bitmapData;
      }
      
      public function dispose() : void
      {
         if(_bitmapData != null)
         {
            _bitmapData.dispose();
            _bitmapData = null;
         }
      }
   }
}
