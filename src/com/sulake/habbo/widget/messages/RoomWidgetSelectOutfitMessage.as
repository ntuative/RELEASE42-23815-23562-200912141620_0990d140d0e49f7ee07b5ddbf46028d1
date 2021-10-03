package com.sulake.habbo.widget.messages
{
   public class RoomWidgetSelectOutfitMessage extends RoomWidgetMessage
   {
      
      public static const const_796:String = "select_outfit";
       
      
      private var var_2136:int;
      
      public function RoomWidgetSelectOutfitMessage(param1:int)
      {
         super(const_796);
         var_2136 = param1;
      }
      
      public function get outfitId() : int
      {
         return var_2136;
      }
   }
}
