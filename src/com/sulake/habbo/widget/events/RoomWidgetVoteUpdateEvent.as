package com.sulake.habbo.widget.events
{
   public class RoomWidgetVoteUpdateEvent extends RoomWidgetUpdateEvent
   {
      
      public static const const_120:String = "RWPUE_VOTE_RESULT";
      
      public static const const_110:String = "RWPUE_VOTE_QUESTION";
       
      
      private var var_1140:int;
      
      private var var_987:String;
      
      private var var_656:Array;
      
      private var var_951:Array;
      
      public function RoomWidgetVoteUpdateEvent(param1:String, param2:String, param3:Array, param4:Array = null, param5:int = 0, param6:Boolean = false, param7:Boolean = false)
      {
         super(param1,param6,param7);
         var_987 = param2;
         var_951 = param3;
         var_656 = param4;
         if(var_656 == null)
         {
            var_656 = [];
         }
         var_1140 = param5;
      }
      
      public function get votes() : Array
      {
         return var_656.slice();
      }
      
      public function get totalVotes() : int
      {
         return var_1140;
      }
      
      public function get question() : String
      {
         return var_987;
      }
      
      public function get choices() : Array
      {
         return var_951.slice();
      }
   }
}
