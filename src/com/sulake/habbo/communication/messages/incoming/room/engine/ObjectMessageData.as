package com.sulake.habbo.communication.messages.incoming.room.engine
{
   public class ObjectMessageData
   {
       
      
      private var var_915:int = 0;
      
      private var var_913:int = 0;
      
      private var _data:String = "";
      
      private var var_2265:int = 0;
      
      private var _state:int = 0;
      
      private var _type:int = 0;
      
      private var var_2266:String = "";
      
      private var _id:int = 0;
      
      private var var_203:Boolean = false;
      
      private var var_238:int = 0;
      
      private var var_1984:String = null;
      
      private var var_92:Number = 0;
      
      private var _y:Number = 0;
      
      private var var_91:Number = 0;
      
      public function ObjectMessageData(param1:int)
      {
         super();
         _id = param1;
      }
      
      public function get y() : Number
      {
         return _y;
      }
      
      public function set type(param1:int) : void
      {
         if(!var_203)
         {
            _type = param1;
         }
      }
      
      public function set y(param1:Number) : void
      {
         if(!var_203)
         {
            _y = param1;
         }
      }
      
      public function get dir() : int
      {
         return var_238;
      }
      
      public function get x() : Number
      {
         return var_92;
      }
      
      public function get state() : int
      {
         return _state;
      }
      
      public function set dir(param1:int) : void
      {
         if(!var_203)
         {
            var_238 = param1;
         }
      }
      
      public function get id() : int
      {
         return _id;
      }
      
      public function get z() : Number
      {
         return var_91;
      }
      
      public function set state(param1:int) : void
      {
         if(!var_203)
         {
            _state = param1;
         }
      }
      
      public function get staticClass() : String
      {
         return var_1984;
      }
      
      public function get data() : String
      {
         return _data;
      }
      
      public function get type() : int
      {
         return _type;
      }
      
      public function set staticClass(param1:String) : void
      {
         if(!var_203)
         {
            var_1984 = param1;
         }
      }
      
      public function set data(param1:String) : void
      {
         if(!var_203)
         {
            _data = param1;
         }
      }
      
      public function setReadOnly() : void
      {
         var_203 = true;
      }
      
      public function set sizeX(param1:int) : void
      {
         if(!var_203)
         {
            var_915 = param1;
         }
      }
      
      public function set sizeY(param1:int) : void
      {
         if(!var_203)
         {
            var_913 = param1;
         }
      }
      
      public function set z(param1:Number) : void
      {
         if(!var_203)
         {
            var_91 = param1;
         }
      }
      
      public function get sizeY() : int
      {
         return var_913;
      }
      
      public function get sizeX() : int
      {
         return var_915;
      }
      
      public function set x(param1:Number) : void
      {
         if(!var_203)
         {
            var_92 = param1;
         }
      }
   }
}
