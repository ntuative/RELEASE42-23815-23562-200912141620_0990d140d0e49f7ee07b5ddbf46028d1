package com.sulake.habbo.communication.messages.outgoing.room.furniture
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class RoomDimmerSavePresetMessageComposer implements IMessageComposer
   {
       
      
      private var var_2026:int;
      
      private var var_2025:int;
      
      private var var_2108:Boolean;
      
      private var var_2107:String;
      
      private var _roomId:int = 0;
      
      private var _roomCategory:int = 0;
      
      private var var_2106:int;
      
      public function RoomDimmerSavePresetMessageComposer(param1:int, param2:int, param3:String, param4:int, param5:Boolean, param6:int = 0, param7:int = 0)
      {
         super();
         _roomId = param6;
         _roomCategory = param7;
         var_2025 = param1;
         var_2026 = param2;
         var_2107 = param3;
         var_2106 = param4;
         var_2108 = param5;
      }
      
      public function getMessageArray() : Array
      {
         return [var_2025,var_2026,var_2107,var_2106,int(var_2108)];
      }
      
      public function dispose() : void
      {
      }
   }
}
