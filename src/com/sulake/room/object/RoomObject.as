package com.sulake.room.object
{
   import com.sulake.room.object.logic.IRoomObjectEventHandler;
   import com.sulake.room.object.logic.IRoomObjectMouseHandler;
   import com.sulake.room.object.visualization.IRoomObjectVisualization;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomObject implements IRoomObjectController
   {
      
      private static var var_1268:int = 0;
       
      
      private var var_80:Vector3d;
      
      private var _updateID:uint;
      
      private var _type:String = "";
      
      private var _visualization:IRoomObjectVisualization;
      
      private var var_88:RoomObjectModel;
      
      private var var_404:IRoomObjectEventHandler;
      
      private var var_1482:Vector3d;
      
      private var var_2069:int = 0;
      
      private var _id:int;
      
      private var var_1483:Vector3d;
      
      private var var_238:Vector3d;
      
      private var var_491:Array;
      
      public function RoomObject(param1:int, param2:uint)
      {
         super();
         _id = param1;
         var_80 = new Vector3d();
         var_238 = new Vector3d();
         var_1482 = new Vector3d();
         var_1483 = new Vector3d();
         var_491 = new Array(param2);
         var _loc3_:Number = param2 - 1;
         while(_loc3_ >= 0)
         {
            var_491[_loc3_] = 0;
            _loc3_--;
         }
         var_88 = new RoomObjectModel();
         _visualization = null;
         var_404 = null;
         _updateID = 0;
         var_2069 = var_1268++;
      }
      
      public function getInstanceId() : int
      {
         return var_2069;
      }
      
      public function getId() : int
      {
         return _id;
      }
      
      public function getUpdateID() : uint
      {
         return _updateID;
      }
      
      public function dispose() : void
      {
         var_80 = null;
         var_238 = null;
         if(var_88 != null)
         {
            var_88.dispose();
            var_88 = null;
         }
         var_491 = null;
         setVisualization(null);
         setEventHandler(null);
      }
      
      public function getType() : String
      {
         return _type;
      }
      
      public function getLocation() : IVector3d
      {
         var_1482.assign(var_80);
         return var_1482;
      }
      
      public function setLocation(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_80.x != param1.x || var_80.y != param1.y || var_80.z != param1.z)
         {
            var_80.x = param1.x;
            var_80.y = param1.y;
            var_80.z = param1.z;
            ++_updateID;
         }
      }
      
      public function setDirection(param1:IVector3d) : void
      {
         if(param1 == null)
         {
            return;
         }
         if(var_238.x != param1.x || var_238.y != param1.y || var_238.z != param1.z)
         {
            var_238.x = (param1.x % 360 + 360) % 360;
            var_238.y = (param1.y % 360 + 360) % 360;
            var_238.z = (param1.z % 360 + 360) % 360;
            ++_updateID;
         }
      }
      
      public function setType(param1:String) : void
      {
         _type = param1;
      }
      
      public function getEventHandler() : IRoomObjectEventHandler
      {
         return var_404;
      }
      
      public function getDirection() : IVector3d
      {
         var_1483.assign(var_238);
         return var_1483;
      }
      
      public function setState(param1:int, param2:uint) : Boolean
      {
         if(param2 < var_491.length)
         {
            if(var_491[param2] != param1)
            {
               var_491[param2] = param1;
               ++_updateID;
            }
            return true;
         }
         return false;
      }
      
      public function setEventHandler(param1:IRoomObjectEventHandler) : void
      {
         if(param1 == var_404)
         {
            return;
         }
         var _loc2_:IRoomObjectEventHandler = var_404;
         if(_loc2_ != null)
         {
            var_404 = null;
            _loc2_.object = null;
         }
         var_404 = param1;
         if(var_404 != null)
         {
            var_404.object = this;
         }
      }
      
      public function getState(param1:uint) : int
      {
         if(param1 < var_491.length)
         {
            return var_491[param1];
         }
         return -1;
      }
      
      public function setVisualization(param1:IRoomObjectVisualization) : void
      {
         if(param1 != _visualization)
         {
            if(_visualization != null)
            {
               _visualization.dispose();
            }
            _visualization = param1;
            if(_visualization != null)
            {
               _visualization.object = this;
            }
         }
      }
      
      public function getVisualization() : IRoomObjectVisualization
      {
         return _visualization;
      }
      
      public function getModel() : IRoomObjectModel
      {
         return var_88;
      }
      
      public function getModelController() : IRoomObjectModelController
      {
         return var_88;
      }
      
      public function getMouseHandler() : IRoomObjectMouseHandler
      {
         return getEventHandler();
      }
   }
}
