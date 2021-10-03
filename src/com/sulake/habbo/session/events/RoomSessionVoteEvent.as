package com.sulake.habbo.session.events
{
   import com.sulake.habbo.session.IRoomSession;
   
   public class RoomSessionVoteEvent extends RoomSessionEvent
   {
      
      public static const const_120:String = "RSPE_VOTE_RESULT";
      
      public static const const_110:String = "RSPE_VOTE_QUESTION";
       
      
      private var var_1140:int = 0;
      
      private var var_987:String = "";
      
      private var var_656:Array;
      
      private var var_951:Array;
      
      public function RoomSessionVoteEvent(param1:String, param2:IRoomSession, param3:String, param4:Array, param5:Array = null, param6:int = 0, param7:Boolean = false, param8:Boolean = false)
      {
         var_951 = [];
         var_656 = [];
         super(param1,param2,param7,param8);
         var_987 = param3;
         var_951 = param4;
         var_656 = param5;
         if(var_656 == null)
         {
            var_656 = [];
         }
         var_1140 = param6;
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
