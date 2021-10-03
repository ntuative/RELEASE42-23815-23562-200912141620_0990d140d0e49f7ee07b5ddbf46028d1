package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ItemMessageData
   {
       
      
      private var var_91:Number = 0;
      
      private var _data:String = "";
      
      private var var_2265:int = 0;
      
      private var _state:int = 0;
      
      private var _type:int = 0;
      
      private var _y:Number = 0;
      
      private var var_1697:Boolean = false;
      
      private var var_2266:String = "";
      
      private var _id:int = 0;
      
      private var var_203:Boolean = false;
      
      private var var_238:String = "";
      
      private var var_1700:int = 0;
      
      private var var_1696:int = 0;
      
      private var var_1699:int = 0;
      
      private var var_1698:int = 0;
      
      public function ItemMessageData(param1:int, param2:int, param3:Boolean)
      {
         super();
         _id = param1;
         _type = param2;
         var_1697 = param3;
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_203)
         {
            _y = param1;
         }
      }
      
      public function get isOldFormat() : Boolean
      {
         return var_1697;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_203)
         {
            _type = param1;
         }
      }
      
      public function get dir() : String
      {
         return var_238;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function set localX(param1:Number) : void
      {
         if(!var_203)
         {
            var_1699 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function set wallX(param1:Number) : void
      {
         if(!var_203)
         {
            var_1700 = param1;
         }
      }
      
      public function set wallY(param1:Number) : void
      {
         if(!var_203)
         {
            var_1696 = param1;
         }
      }
      
      public function set dir(param1:String) : void
      {
         if(!var_203)
         {
            var_238 = param1;
         }
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function set localY(param1:Number) : void
      {
         if(!var_203)
         {
            var_1698 = param1;
         }
      }
      
      public function set state(param1:int) : void
      {
         if(!var_203)
         {
            _state = param1;
         }
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function get localX() : Number
      {
         return var_1699;
      }
      
      public function set data(param1:String) : void
      {
         if(!var_203)
         {
            _data = param1;
         }
      }
      
      public function get wallX() : Number
      {
         return var_1700;
      }
      
      public function get wallY() : Number
      {
         return var_1696;
      }
      
      public function get localY() : Number
      {
         return var_1698;
      }
      
      public function setReadOnly() : void
      {
         var_203 = true;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function get z() : Number
      {
         return var_91;
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_203)
         {
            var_91 = param1;
         }
      }
   }
}
