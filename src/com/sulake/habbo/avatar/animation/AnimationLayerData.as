package com.sulake.habbo.avatar.animation
{
   import com.sulake.habbo.avatar.AvatarStructure;
   import com.sulake.habbo.avatar.actions.ActiveActionData;
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.actions.IActiveActionData;
   
   public class AnimationLayerData implements IAnimationLayerData
   {
      
      public static const const_520:String = "bodypart";
      
      public static const const_347:String = "fx";
       
      
      private var _id:String;
      
      private var _dx:int;
      
      private var var_1496:IActiveActionData;
      
      private var _type:String;
      
      private var var_2094:int;
      
      private var var_468:int;
      
      private var var_1022:String;
      
      private var var_1214:int;
      
      private var var_1204:int;
      
      private var var_1203:int;
      
      public function AnimationLayerData(param1:AvatarStructure, param2:XML, param3:String, param4:int, param5:IActionDefinition)
      {
         super();
         var_468 = param4;
         _id = String(param2.@id);
         var_2094 = parseInt(param2.@frame);
         _dx = parseInt(param2.@dx);
         var_1203 = parseInt(param2.@dy);
         var_1204 = parseInt(param2.@dz);
         var_1214 = parseInt(param2.@dd);
         _type = param3;
         var_1022 = String(param2.@base);
         var _loc6_:String = "";
         if(var_1022 != "")
         {
            _loc6_ = String(baseAsInt());
         }
         if(param5 != null)
         {
            var_1496 = new ActiveActionData(param5.state,_loc6_);
            var_1496.definition = param5;
         }
      }
      
      public function get animationFrame() : int
      {
         return var_2094;
      }
      
      public function baseAsInt() : int
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         while(_loc2_ < var_1022.length)
         {
            _loc1_ += var_1022.charCodeAt(_loc2_);
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function get frameCounter() : int
      {
         return var_468;
      }
      
      public function get base() : String
      {
         return var_1022;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function get dx() : int
      {
         return _dx;
      }
      
      public function get dz() : int
      {
         return var_1204;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get dy() : int
      {
         return var_1203;
      }
      
      public function get action() : IActiveActionData
      {
         return var_1496;
      }
      
      public function get directionOffset() : int
      {
         return var_1214;
      }
   }
}
