package com.sulake.habbo.avatar.structure.animation
{
   import flash.utils.Dictionary;
   
   public class AnimationAction
   {
       
      
      private var _id:String;
      
      private var var_1054:Dictionary;
      
      public function AnimationAction(param1:XML)
      {
         var _loc2_:* = null;
         super();
         _id = String(param1.@id);
         var_1054 = new Dictionary();
         for each(_loc2_ in param1.part)
         {
            var_1054[String(_loc2_["set-type"])] = new ActionPart(_loc2_);
         }
      }
      
      public function get parts() : Dictionary
      {
         return var_1054;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function getPart(param1:String) : ActionPart
      {
         return var_1054[param1] as ActionPart;
      }
   }
}
