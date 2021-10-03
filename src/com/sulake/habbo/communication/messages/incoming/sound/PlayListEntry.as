package com.sulake.habbo.communication.messages.incoming.sound
{
   public class PlayListEntry
   {
       
      
      private var var_1754:int;
      
      private var var_1756:int = 0;
      
      private var var_1755:String;
      
      private var var_1752:int;
      
      private var var_1753:String;
      
      public function PlayListEntry(param1:int, param2:int, param3:String, param4:String)
      {
         super();
         var_1754 = param1;
         var_1752 = param2;
         var_1753 = param3;
         var_1755 = param4;
      }
      
      public function get length() : int
      {
         return var_1752;
      }
      
      public function get name() : String
      {
         return var_1753;
      }
      
      public function get creator() : String
      {
         return var_1755;
      }
      
      public function get startPlayHeadPos() : int
      {
         return var_1756;
      }
      
      public function get id() : int
      {
         return var_1754;
      }
      
      public function set startPlayHeadPos(param1:int) : void
      {
         var_1756 = param1;
      }
   }
}
