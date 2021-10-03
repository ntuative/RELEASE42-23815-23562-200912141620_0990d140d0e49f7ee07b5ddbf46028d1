package com.sulake.room.renderer.cache
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObjectLocationCacheItem
   {
       
      
      private var var_1727:int = -1;
      
      private var var_1142:int = -1;
      
      private var var_622:Vector3d = null;
      
      public function RoomObjectLocationCacheItem()
      {
         super();
         var_622 = new Vector3d();
      }
      
      public function get objectUpdateId() : int
      {
         return var_1727;
      }
      
      public function set objectUpdateId(param1:int) : void
      {
         var_1727 = param1;
      }
      
      public function set screenLoc(param1:IVector3d) : void
      {
         var_622.assign(param1);
         var_622.x = Math.round(var_622.x);
         var_622.y = Math.round(var_622.y);
      }
      
      public function set geometryUpdateId(param1:int) : void
      {
         var_1142 = param1;
      }
      
      public function get screenLoc() : IVector3d
      {
         return var_622;
      }
      
      public function get geometryUpdateId() : int
      {
         return var_1142;
      }
   }
}
