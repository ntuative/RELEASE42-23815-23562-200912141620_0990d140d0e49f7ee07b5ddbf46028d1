package com.sulake.habbo.room.object
{
   public class RoomPlaneMaskData
   {
       
      
      private var var_1714:Number = 0;
      
      private var var_1713:Number = 0;
      
      private var var_1712:Number = 0;
      
      private var var_1715:Number = 0;
      
      public function RoomPlaneMaskData(param1:Number, param2:Number, param3:Number, param4:Number)
      {
         super();
         var_1713 = param1;
         var_1712 = param2;
         var_1714 = param3;
         var_1715 = param4;
      }
      
      public function get leftSideLoc() : Number
      {
         return var_1713;
      }
      
      public function get leftSideLength() : Number
      {
         return var_1714;
      }
      
      public function get rightSideLoc() : Number
      {
         return var_1712;
      }
      
      public function get rightSideLength() : Number
      {
         return var_1715;
      }
   }
}
