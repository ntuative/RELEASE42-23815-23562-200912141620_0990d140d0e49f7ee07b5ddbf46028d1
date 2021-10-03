package com.sulake.habbo.widget.messages
{
   public class RoomWidgetFurniActionMessage extends RoomWidgetMessage
   {
      
      public static const const_234:String = "RWFAM_MOVE";
      
      public static const const_548:String = "RWFUAM_ROTATE";
      
      public static const const_585:String = "RWFAM_PICKUP";
       
      
      private var var_1613:int = 0;
      
      private var var_2084:int = 0;
      
      public function RoomWidgetFurniActionMessage(param1:String, param2:int, param3:int)
      {
         super(param1);
         var_1613 = param2;
         var_2084 = param3;
      }
      
      public function get furniId() : int
      {
         return var_1613;
      }
      
      public function get furniCategory() : int
      {
         return var_2084;
      }
   }
}
