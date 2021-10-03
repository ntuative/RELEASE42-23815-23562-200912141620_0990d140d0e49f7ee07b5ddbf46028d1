package com.sulake.habbo.widget.messages
{
   public class RoomWidgetOpenInventoryMessage extends RoomWidgetMessage
   {
      
      public static const const_848:String = "inventory_badges";
      
      public static const const_1270:String = "inventory_clothes";
      
      public static const const_1225:String = "inventory_furniture";
      
      public static const const_636:String = "RWGOI_MESSAGE_OPEN_INVENTORY";
      
      public static const const_953:String = "inventory_effects";
       
      
      private var var_2016:String;
      
      public function RoomWidgetOpenInventoryMessage(param1:String)
      {
         super(const_636);
         var_2016 = param1;
      }
      
      public function get inventoryType() : String
      {
         return var_2016;
      }
   }
}
