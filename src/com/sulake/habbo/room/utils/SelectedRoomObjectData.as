package com.sulake.habbo.room.utils
{
   import com.sulake.habbo.room.ISelectedRoomObjectData;
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class SelectedRoomObjectData implements ISelectedRoomObjectData
   {
       
      
      private var var_80:Vector3d = null;
      
      private var _id:int = 0;
      
      private var var_238:Vector3d = null;
      
      private var var_1673:int = 0;
      
      private var var_1741:String = null;
      
      private var _category:int = 0;
      
      private var var_1742:String = "";
      
      public function SelectedRoomObjectData(param1:int, param2:int, param3:String, param4:IVector3d, param5:IVector3d, param6:int = 0, param7:String = null)
      {
         super();
         _id = param1;
         _category = param2;
         var_1742 = param3;
         var_80 = new Vector3d();
         var_80.assign(param4);
         var_238 = new Vector3d();
         var_238.assign(param5);
         var_1673 = param6;
         var_1741 = param7;
      }
      
      public function get loc() : Vector3d
      {
         return var_80;
      }
      
      public function get typeId() : int
      {
         return var_1673;
      }
      
      public function get dir() : Vector3d
      {
         return var_238;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get instanceData() : String
      {
         return var_1741;
      }
      
      public function get operation() : String
      {
         return var_1742;
      }
      
      public function dispose() : void
      {
         var_80 = null;
         var_238 = null;
      }
      
      public function get category() : int
      {
         return _category;
      }
   }
}
