package com.sulake.habbo.avatar.structure.parts
{
   public class PartDefinition
   {
       
      
      private var _removeSetType:String;
      
      private var var_1401:int = -1;
      
      private var var_1176:Boolean;
      
      private var var_1175:String;
      
      private var var_1871:String;
      
      public function PartDefinition(param1:XML)
      {
         super();
         var_1871 = String(param1["set-type"]);
         var_1175 = String(param1["flipped-set-type"]);
         _removeSetType = String(param1["remove-set-type"]);
         var_1176 = false;
      }
      
      public function hasStaticId() : Boolean
      {
         return var_1401 >= 0;
      }
      
      public function get flippedSetType() : String
      {
         return var_1175;
      }
      
      public function get staticId() : int
      {
         return var_1401;
      }
      
      public function set staticId(param1:int) : void
      {
         var_1401 = param1;
      }
      
      public function get appendToFigure() : Boolean
      {
         return var_1176;
      }
      
      public function set appendToFigure(param1:Boolean) : void
      {
         var_1176 = param1;
      }
      
      public function set flippedSetType(param1:String) : void
      {
         var_1175 = param1;
      }
      
      public function get setType() : String
      {
         return var_1871;
      }
      
      public function get removeSetType() : String
      {
         return _removeSetType;
      }
   }
}
