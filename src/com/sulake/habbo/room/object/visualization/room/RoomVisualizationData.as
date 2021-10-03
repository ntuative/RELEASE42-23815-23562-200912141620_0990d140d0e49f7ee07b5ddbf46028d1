package com.sulake.habbo.room.object.visualization.room
{
   import com.sulake.habbo.room.object.visualization.room.mask.PlaneMaskManager;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.IPlaneRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.animated.LandscapeRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.FloorRasterizer;
   import com.sulake.habbo.room.object.visualization.room.rasterizer.basic.WallRasterizer;
   import com.sulake.room.object.visualization.IRoomObjectVisualizationData;
   import com.sulake.room.object.visualization.utils.IGraphicAssetCollection;
   
   public class RoomVisualizationData implements IRoomObjectVisualizationData
   {
       
      
      private var var_572:PlaneMaskManager;
      
      private var var_573:WallRasterizer;
      
      private var var_574:FloorRasterizer;
      
      private var _initialized:Boolean = false;
      
      private var _landscapeRasterizer:LandscapeRasterizer;
      
      public function RoomVisualizationData()
      {
         super();
         var_573 = new WallRasterizer();
         var_574 = new FloorRasterizer();
         _landscapeRasterizer = new LandscapeRasterizer();
         var_572 = new PlaneMaskManager();
      }
      
      public function get maskManager() : PlaneMaskManager
      {
         return var_572;
      }
      
      public function get wallRasterizer() : IPlaneRasterizer
      {
         return var_573;
      }
      
      public function get floorRasterizer() : IPlaneRasterizer
      {
         return var_574;
      }
      
      protected function reset() : void
      {
      }
      
      public function initialize(param1:XML) : Boolean
      {
         var _loc6_:* = null;
         var _loc7_:* = null;
         var _loc8_:* = null;
         var _loc9_:* = null;
         reset();
         if(param1 == null)
         {
            return false;
         }
         var _loc2_:XMLList = param1.wallData;
         if(_loc2_.length() > 0)
         {
            _loc6_ = _loc2_[0];
            var_573.initialize(_loc6_);
         }
         var _loc3_:XMLList = param1.floorData;
         if(_loc3_.length() > 0)
         {
            _loc7_ = _loc3_[0];
            var_574.initialize(_loc7_);
         }
         var _loc4_:XMLList = param1.landscapeData;
         if(_loc4_.length() > 0)
         {
            _loc8_ = _loc4_[0];
            _landscapeRasterizer.initialize(_loc8_);
         }
         var _loc5_:XMLList = param1.maskData;
         if(_loc5_.length() > 0)
         {
            _loc9_ = _loc5_[0];
            var_572.initialize(_loc9_);
         }
         return true;
      }
      
      public function get initialized() : Boolean
      {
         return _initialized;
      }
      
      public function get landscapeRasterizer() : IPlaneRasterizer
      {
         return _landscapeRasterizer;
      }
      
      public function initializeAssetCollection(param1:IGraphicAssetCollection) : void
      {
         if(_initialized)
         {
            return;
         }
         var_573.initializeAssetCollection(param1);
         var_574.initializeAssetCollection(param1);
         _landscapeRasterizer.initializeAssetCollection(param1);
         var_572.initializeAssetCollection(param1);
         _initialized = true;
      }
      
      public function dispose() : void
      {
         if(var_573 != null)
         {
            var_573.dispose();
            var_573 = null;
         }
         if(var_574 != null)
         {
            var_574.dispose();
            var_574 = null;
         }
         if(_landscapeRasterizer != null)
         {
            _landscapeRasterizer.dispose();
            _landscapeRasterizer = null;
         }
         if(var_572 != null)
         {
            var_572.dispose();
            var_572 = null;
         }
      }
   }
}
