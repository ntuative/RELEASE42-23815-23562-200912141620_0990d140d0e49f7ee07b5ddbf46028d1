package com.sulake.core.window.utils
{
   import com.sulake.core.window.IWindow;
   
   public class WindowRectLimits implements IRectLimiter
   {
       
      
      private var var_414:int = -2147483648;
      
      private var var_413:int = 2147483647;
      
      private var var_412:int = 2147483647;
      
      private var _target:IWindow;
      
      private var var_411:int = -2147483648;
      
      public function WindowRectLimits(param1:IWindow)
      {
         super();
         _target = param1;
      }
      
      public function get maxWidth() : int
      {
         return var_413;
      }
      
      public function get isEmpty() : Boolean
      {
         return var_411 == int.MIN_VALUE && var_413 == int.MAX_VALUE && var_414 == int.MIN_VALUE && var_412 == int.MAX_VALUE;
      }
      
      public function set maxWidth(param1:int) : void
      {
         var_413 = param1;
         if(var_413 < int.MAX_VALUE && true && _target.width > var_413)
         {
            _target.width = var_413;
         }
      }
      
      public function setEmpty() : void
      {
         var_411 = int.MIN_VALUE;
         var_413 = int.MAX_VALUE;
         var_414 = int.MIN_VALUE;
         var_412 = int.MAX_VALUE;
      }
      
      public function set maxHeight(param1:int) : void
      {
         var_412 = param1;
         if(var_412 < int.MAX_VALUE && true && _target.height > var_412)
         {
            _target.height = var_412;
         }
      }
      
      public function get minHeight() : int
      {
         return var_414;
      }
      
      public function get minWidth() : int
      {
         return var_411;
      }
      
      public function clone(param1:IWindow) : WindowRectLimits
      {
         var _loc2_:WindowRectLimits = new WindowRectLimits(param1);
         _loc2_.var_411 = var_411;
         _loc2_.var_413 = var_413;
         _loc2_.var_414 = var_414;
         _loc2_.var_412 = var_412;
         return _loc2_;
      }
      
      public function set minWidth(param1:int) : void
      {
         var_411 = param1;
         if(var_411 > int.MIN_VALUE && true && _target.width < var_411)
         {
            _target.width = var_411;
         }
      }
      
      public function set minHeight(param1:int) : void
      {
         var_414 = param1;
         if(var_414 > int.MIN_VALUE && true && _target.height < var_414)
         {
            _target.height = var_414;
         }
      }
      
      public function get maxHeight() : int
      {
         return var_412;
      }
   }
}
