package com.sulake.habbo.inventory.effects
{
   import com.sulake.habbo.inventory.common.IThumbListDataProvider;
   
   public class EffectListProxy implements IThumbListDataProvider
   {
       
      
      private var var_458:int;
      
      private var var_88:EffectsModel;
      
      public function EffectListProxy(param1:EffectsModel, param2:int)
      {
         super();
         var_88 = param1;
         var_458 = param2;
      }
      
      public function getDrawableList() : Array
      {
         return var_88.getEffects(var_458);
      }
      
      public function dispose() : void
      {
         var_88 = null;
      }
   }
}
