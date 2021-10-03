package com.sulake.habbo.room.utils
{
   public class RoomInstanceData
   {
       
      
      private var var_728:LegacyWallGeometry = null;
      
      private var var_509:SelectedRoomObjectData = null;
      
      private var _roomCategory:int = 0;
      
      private var var_510:TileHeightMap = null;
      
      private var var_1627:String = null;
      
      private var _roomId:int = 0;
      
      private var var_727:RoomCamera = null;
      
      public function RoomInstanceData(param1:int, param2:int)
      {
         super();
         _roomId = param1;
         _roomCategory = param2;
         var_728 = new LegacyWallGeometry();
         var_727 = new RoomCamera();
      }
      
      public function set tileHeightMap(param1:TileHeightMap) : void
      {
         if(var_510 != null)
         {
            var_510.dispose();
         }
         var_510 = param1;
      }
      
      public function get roomId() : int
      {
         return _roomId;
      }
      
      public function set worldType(param1:String) : void
      {
         var_1627 = param1;
      }
      
      public function get legacyGeometry() : LegacyWallGeometry
      {
         return var_728;
      }
      
      public function get roomCamera() : RoomCamera
      {
         return var_727;
      }
      
      public function dispose() : void
      {
         if(var_510 != null)
         {
            var_510.dispose();
            var_510 = null;
         }
         if(var_728 != null)
         {
            var_728.dispose();
            var_728 = null;
         }
         if(var_727 != null)
         {
            var_727.dispose();
            var_727 = null;
         }
         if(var_509 != null)
         {
            var_509.dispose();
            var_509 = null;
         }
      }
      
      public function get tileHeightMap() : TileHeightMap
      {
         return var_510;
      }
      
      public function get worldType() : String
      {
         return var_1627;
      }
      
      public function set selectedObject(param1:SelectedRoomObjectData) : void
      {
         if(var_509 != null)
         {
            var_509.dispose();
         }
         var_509 = param1;
      }
      
      public function get roomCategory() : int
      {
         return _roomCategory;
      }
      
      public function get selectedObject() : SelectedRoomObjectData
      {
         return var_509;
      }
   }
}
