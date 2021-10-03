package com.sulake.habbo.room.utils
{
   import com.sulake.room.utils.IVector3d;
   import com.sulake.room.utils.Vector3d;
   
   public class RoomCamera
   {
      
      private static const const_339:Number = 0.5;
      
      private static const const_754:int = 3;
      
      private static const const_1071:Number = 1;
       
      
      private var var_1989:Boolean = false;
      
      private var var_1992:Boolean = false;
      
      private var var_993:int = 0;
      
      private var var_263:Vector3d = null;
      
      private var var_1995:int = 0;
      
      private var var_1990:int = 0;
      
      private var var_1994:Boolean = false;
      
      private var var_1993:int = -2;
      
      private var var_1988:Boolean = false;
      
      private var var_1987:int = 0;
      
      private var var_1991:int = -1;
      
      private var var_389:Vector3d = null;
      
      private var var_1996:int = 0;
      
      public function RoomCamera()
      {
         super();
      }
      
      public function get roomWd() : int
      {
         return var_1995;
      }
      
      public function get targetId() : int
      {
         return var_1991;
      }
      
      public function set roomHt(param1:int) : void
      {
         var_1987 = param1;
      }
      
      public function set roomWd(param1:int) : void
      {
         var_1995 = param1;
      }
      
      public function set limitedLocationX(param1:Boolean) : void
      {
         var_1989 = param1;
      }
      
      public function set targetId(param1:int) : void
      {
         var_1991 = param1;
      }
      
      public function set limitedLocationY(param1:Boolean) : void
      {
         var_1992 = param1;
      }
      
      public function dispose() : void
      {
         var_389 = null;
         var_263 = null;
      }
      
      public function set target(param1:IVector3d) : void
      {
         if(var_389 == null)
         {
            var_389 = new Vector3d();
         }
         var_389.assign(param1);
         var_993 = 0;
      }
      
      public function get targetCategory() : int
      {
         return var_1993;
      }
      
      public function get screenHt() : int
      {
         return var_1996;
      }
      
      public function set screenWd(param1:int) : void
      {
         var_1990 = param1;
      }
      
      public function get location() : IVector3d
      {
         return var_263;
      }
      
      public function set screenHt(param1:int) : void
      {
         var_1996 = param1;
      }
      
      public function get roomHt() : int
      {
         return var_1987;
      }
      
      public function get limitedLocationX() : Boolean
      {
         return var_1989;
      }
      
      public function get limitedLocationY() : Boolean
      {
         return var_1992;
      }
      
      public function update(param1:uint) : void
      {
         var _loc2_:* = null;
         if(var_389 != null && var_263 != null)
         {
            ++var_993;
            _loc2_ = Vector3d.dif(var_389,var_263);
            if(_loc2_.length <= const_339)
            {
               var_263 = var_389;
               var_389 = null;
            }
            else
            {
               _loc2_.div(_loc2_.length);
               if(_loc2_.length < const_339 * (const_754 + 1))
               {
                  _loc2_.mul(const_339);
               }
               else if(var_993 <= const_754)
               {
                  _loc2_.mul(const_339);
               }
               else
               {
                  _loc2_.mul(const_1071);
               }
               var_263 = Vector3d.sum(var_263,_loc2_);
            }
         }
      }
      
      public function set centeredLocX(param1:Boolean) : void
      {
         var_1994 = param1;
      }
      
      public function get screenWd() : int
      {
         return var_1990;
      }
      
      public function set centeredLocY(param1:Boolean) : void
      {
         var_1988 = param1;
      }
      
      public function set targetCategory(param1:int) : void
      {
         var_1993 = param1;
      }
      
      public function initializeLocation(param1:IVector3d) : void
      {
         if(var_263 != null)
         {
            return;
         }
         var_263 = new Vector3d();
         var_263.assign(param1);
      }
      
      public function get centeredLocX() : Boolean
      {
         return var_1994;
      }
      
      public function get centeredLocY() : Boolean
      {
         return var_1988;
      }
   }
}
