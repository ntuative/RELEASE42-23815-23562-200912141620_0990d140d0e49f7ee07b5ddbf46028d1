package com.sulake.habbo.communication.messages.outgoing.tracking
{
   import com.sulake.core.communication.messages.IMessageComposer;
   
   public class PerformanceLogMessageComposer implements IMessageComposer
   {
       
      
      private var var_919:int = 0;
      
      private var var_1136:int = 0;
      
      private var var_1675:String = "";
      
      private var var_920:int = 0;
      
      private var var_1744:String = "";
      
      private var var_1745:int = 0;
      
      private var var_1347:String = "";
      
      private var var_1747:int = 0;
      
      private var var_1743:int = 0;
      
      private var var_1677:String = "";
      
      private var var_1746:int = 0;
      
      public function PerformanceLogMessageComposer(param1:int, param2:String, param3:String, param4:String, param5:String, param6:Boolean, param7:int, param8:int, param9:int, param10:int, param11:int)
      {
         super();
         var_1747 = param1;
         var_1677 = param2;
         var_1347 = param3;
         var_1675 = param4;
         var_1744 = param5;
         if(param6)
         {
            var_1136 = 1;
         }
         else
         {
            var_1136 = 0;
         }
         var_1745 = param7;
         var_1743 = param8;
         var_920 = param9;
         var_1746 = param10;
         var_919 = param11;
      }
      
      public function getMessageArray() : Array
      {
         return [var_1747,var_1677,var_1347,var_1675,var_1744,var_1136,var_1745,var_1743,var_920,var_1746,var_919];
      }
      
      public function dispose() : void
      {
      }
   }
}
