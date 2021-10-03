package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureBottleVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1073:int = -1;
      
      private static const const_755:int = 20;
      
      private static const const_489:int = 9;
       
      
      private var var_564:Boolean = false;
      
      private var var_235:Array;
      
      public function FurnitureBottleVisualization()
      {
         var_235 = new Array();
         super();
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == -1)
         {
            var_564 = true;
            var_235 = new Array();
            var_235.push(const_1073);
            return;
         }
         if(param1 >= 0 && param1 <= 7)
         {
            if(var_564)
            {
               var_564 = false;
               var_235 = new Array();
               var_235.push(const_755);
               var_235.push(const_489 + param1);
               var_235.push(param1);
               return;
            }
            super.setAnimation(param1);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(0))
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
