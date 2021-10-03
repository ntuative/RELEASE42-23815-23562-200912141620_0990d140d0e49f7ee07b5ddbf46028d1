package com.sulake.habbo.communication.messages.incoming.navigator
{
   public class NavigationNodeData
   {
       
      
      private var var_1259:int;
      
      private var var_1418:String;
      
      public function NavigationNodeData(param1:int, param2:String)
      {
         super();
         var_1259 = param1;
         var_1418 = param2;
         Logger.log("READ NODE: " + var_1259 + ", " + var_1418);
      }
      
      public function get nodeName() : String
      {
         return var_1418;
      }
      
      public function get nodeId() : int
      {
         return var_1259;
      }
   }
}
