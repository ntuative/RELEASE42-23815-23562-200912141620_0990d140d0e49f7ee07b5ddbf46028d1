package com.sulake.habbo.room.object.visualization.furniture
{
   public class FurnitureValRandomizerVisualization extends AnimatedFurnitureVisualization
   {
      
      private static const const_1074:int = 31;
      
      private static const const_1073:int = 32;
      
      private static const const_488:int = 30;
      
      private static const const_755:int = 20;
      
      private static const const_489:int = 10;
       
      
      private var var_564:Boolean = false;
      
      private var var_235:Array;
      
      public function FurnitureValRandomizerVisualization()
      {
         var_235 = new Array();
         super();
         super.setAnimation(const_488);
      }
      
      override protected function setAnimation(param1:int) : void
      {
         if(param1 == 0)
         {
            var_564 = true;
            var_235 = new Array();
            var_235.push(const_1074);
            var_235.push(const_1073);
            return;
         }
         if(param1 > 0 && param1 <= const_489)
         {
            if(var_564)
            {
               var_564 = false;
               var_235 = new Array();
               if(_direction == 2)
               {
                  var_235.push(const_755 + 5 - param1);
                  var_235.push(const_489 + 5 - param1);
               }
               else
               {
                  var_235.push(const_755 + param1);
                  var_235.push(const_489 + param1);
               }
               var_235.push(const_488);
               return;
            }
            super.setAnimation(const_488);
         }
      }
      
      override protected function updateAnimation(param1:Number) : Boolean
      {
         if(super.getLastFramePlayed(11))
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
