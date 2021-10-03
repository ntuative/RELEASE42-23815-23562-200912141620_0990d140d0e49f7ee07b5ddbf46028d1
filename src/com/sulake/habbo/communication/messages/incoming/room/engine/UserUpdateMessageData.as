package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class UserUpdateMessageData
   {
       
      
      private var _y:Number = 0;
      
      private var var_91:Number = 0;
      
      private var var_238:int = 0;
      
      private var var_1582:int = 0;
      
      private var var_1584:Number = 0;
      
      private var var_1583:Number = 0;
      
      private var var_1585:Number = 0;
      
      private var var_1581:Number = 0;
      
      private var var_1580:Boolean = false;
      
      private var var_92:Number = 0;
      
      private var _id:int = 0;
      
      private var var_197:Array;
      
      public function UserUpdateMessageData(param1:int, param2:Number, param3:Number, param4:Number, param5:Number, param6:int, param7:int, param8:Number, param9:Number, param10:Number, param11:Boolean, param12:Array)
      {
         var_197 = [];
         super();
         _id = param1;
         var_92 = param2;
         _y = param3;
         var_91 = param4;
         var_1581 = param5;
         var_238 = param6;
         var_1582 = param7;
         var_1584 = param8;
         var_1583 = param9;
         var_1585 = param10;
         var_1580 = param11;
         var_197 = param12;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_91;
      }
      
      public function get dir() : int
      {
         return var_238;
      }
      
      public function get localZ() : Number
      {
         return var_1581;
      }
      
      public function get isMoving() : Boolean
      {
         return var_1580;
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get dirHead() : int
      {
         return var_1582;
      }
      
      public function get targetX() : Number
      {
         return var_1584;
      }
      
      public function get targetY() : Number
      {
         return var_1583;
      }
      
      public function get targetZ() : Number
      {
         return var_1585;
      }
      
      public function get x() : Number
      {
         return var_92;
      }
      
      public function get actions() : Array
      {
         return var_197.slice();
      }
   }
}
