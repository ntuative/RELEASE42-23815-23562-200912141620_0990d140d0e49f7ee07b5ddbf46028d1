package com.sulake.habbo.avatar
{
   import com.sulake.habbo.avatar.actions.IActionDefinition;
   import com.sulake.habbo.avatar.structure.figure.IPartColor;
   import flash.geom.ColorTransform;
   
   public class AvatarImagePartContainer
   {
       
      
      private var _frames:Array;
      
      private var var_2090:int;
      
      private var var_2092:String;
      
      private var var_1496:IActionDefinition;
      
      private var var_2089:Boolean;
      
      private var _color:IPartColor;
      
      private var var_2091:String;
      
      private var var_2093:String;
      
      private var var_1778:Boolean;
      
      private var var_2088:ColorTransform;
      
      private var var_1792:int;
      
      public function AvatarImagePartContainer(param1:String, param2:String, param3:int, param4:IPartColor, param5:Array, param6:IActionDefinition, param7:Boolean, param8:int, param9:String = "", param10:Boolean = false, param11:Number = 1)
      {
         super();
         var_2092 = param1;
         var_2091 = param2;
         var_2090 = param3;
         _color = param4;
         _frames = param5;
         var_1496 = param6;
         var_1778 = param7;
         var_1792 = param8;
         var_2093 = param9;
         var_2089 = param10;
         var_2088 = new ColorTransform(1,1,1,param11);
      }
      
      public function get isColorable() : Boolean
      {
         return var_1778;
      }
      
      public function get partType() : String
      {
         return var_2091;
      }
      
      public function getFrameIndex(param1:int) : int
      {
         return 0;
      }
      
      public function get paletteMapId() : int
      {
         return var_1792;
      }
      
      public function get isBlendable() : Boolean
      {
         return var_2089;
      }
      
      public function get color() : IPartColor
      {
         return _color;
      }
      
      public function get partId() : int
      {
         return var_2090;
      }
      
      public function get flippedPartType() : String
      {
         return var_2093;
      }
      
      public function get bodyPartId() : String
      {
         return var_2092;
      }
      
      public function get action() : IActionDefinition
      {
         return var_1496;
      }
      
      public function get blendTransform() : ColorTransform
      {
         return var_2088;
      }
   }
}
