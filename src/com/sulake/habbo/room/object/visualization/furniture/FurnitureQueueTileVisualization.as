package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureQueueTileVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1002:int = 1;
      
      private static const const_1073:int = 3;
      
      private static const const_1001:int = 2;
      
      private static const const_1003:int = 15;
       
      
      private var var_717:int;
      
      private var var_235:Array;
      
      public function FurnitureQueueTileVisualization()
      {
         var_235 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == const_1001)
         {
            var_235 = new Array();
            var_235.push(const_1002);
            var_717 = const_1003;
         }
         super.setAnimation(param1);
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(var_717 > 0)
         {
            --var_717;
         }
         if(var_717 == 0)
         {
            if(false)
            {
               super.setAnimation(var_235.shift());
            }
         }
         return super.updateAnimation(param1);
      }
   }
}
