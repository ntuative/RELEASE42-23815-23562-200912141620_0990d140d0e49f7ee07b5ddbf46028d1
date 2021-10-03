package com.sulake.habbo.toolbar
{
   public class StateItem
   {
       
      
      private var var_1071:Boolean;
      
      private var var_1889:String;
      
      private var _frames:XMLList;
      
      private var var_1020:String = "-1";
      
      private var var_5:String;
      
      private var var_182:int = 120;
      
      private var var_1183:String = "-1";
      
      private var var_1184:String;
      
      private var var_1888:Boolean;
      
      private var var_1404:String = "-1";
      
      private var _id:String;
      
      public function StateItem(param1:XML, param2:String)
      {
         super();
         _id = param1.@id;
         if(param1.attribute("loop").length() > 0)
         {
            var_1071 = Boolean(param1.@loop);
         }
         if(param1.attribute("bounce").length() > 0)
         {
            var_1888 = Boolean(param1.@loop);
         }
         if(param1.attribute("timer").length() > 0)
         {
            var_182 = int(param1.@timer);
         }
         if(param1.attribute("namebase").length() > 0)
         {
            var_1184 = param1.@namebase;
         }
         else
         {
            var_1184 = param2;
         }
         if(param1.attribute("state_over").length() > 0)
         {
            var_1020 = param1.@state_over;
         }
         if(param1.attribute("nextState").length() > 0)
         {
            var_1183 = param1.@nextState;
         }
         else
         {
            var_1183 = _id;
         }
         if(param1.attribute("state_default").length() > 0)
         {
            var_1404 = param1.@state_default;
         }
         if(param1.attribute("tooltip").length() > 0)
         {
            var_1889 = param1.@tooltip;
         }
         if(param1.attribute("background").length() > 0)
         {
            var_5 = param1.@background;
         }
         var _loc3_:XMLList = param1.elements("frame");
         if(_loc3_.length() > 0)
         {
            _frames = _loc3_;
         }
      }
      
      public function get hasStateOver() : Boolean
      {
         return var_1020 != "-1";
      }
      
      public function get bounce() : Boolean
      {
         return var_1888;
      }
      
      public function get defaultState() : String
      {
         return var_1404;
      }
      
      public function get hasDefaultState() : Boolean
      {
         return var_1404 != "-1";
      }
      
      public function get tooltip() : String
      {
         return var_1889;
      }
      
      public function get id() : String
      {
         return _id;
      }
      
      public function get timer() : int
      {
         return var_182;
      }
      
      public function get loop() : Boolean
      {
         return var_1071;
      }
      
      public function get nextState() : String
      {
         return var_1183;
      }
      
      public function get frames() : XMLList
      {
         return _frames;
      }
      
      public function get background() : String
      {
         return var_5;
      }
      
      public function get stateOver() : String
      {
         return var_1020;
      }
      
      public function get nameBase() : String
      {
         return var_1184;
      }
   }
}
