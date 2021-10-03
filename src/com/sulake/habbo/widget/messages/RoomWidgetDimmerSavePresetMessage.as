package com.sulake.habbo.widget.messages
{
   public class RoomWidgetDimmerSavePresetMessage extends RoomWidgetMessage
   {
      
      public static const const_528:String = "RWSDPM_SAVE_PRESET";
       
      
      private var _color:uint;
      
      private var var_2026:int;
      
      private var var_2025:int;
      
      private var var_2024:Boolean;
      
      private var var_1014:int;
      
      public function RoomWidgetDimmerSavePresetMessage(param1:int, param2:int, param3:uint, param4:int, param5:Boolean)
      {
         super(const_528);
         var_2025 = param1;
         var_2026 = param2;
         _color = param3;
         var_1014 = param4;
         var_2024 = param5;
      }
      
      public function get color() : uint
      {
         return _color;
      }
      
      public function get effectTypeId() : int
      {
         return var_2026;
      }
      
      public function get presetNumber() : int
      {
         return var_2025;
      }
      
      public function get brightness() : int
      {
         return var_1014;
      }
      
      public function get apply() : Boolean
      {
         return var_2024;
      }
   }
}
