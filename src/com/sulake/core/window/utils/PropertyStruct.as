package com.sulake.core.window.utils
{
   import com.sulake.core.utils.Map;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.getQualifiedClassName;
   
   public class PropertyStruct
   {
      
      public static const const_693:String = "Rectangle";
      
      public static const const_57:String = "Boolean";
      
      public static const const_554:String = "Number";
      
      public static const const_87:String = "int";
      
      public static const const_215:String = "String";
      
      public static const const_610:String = "Point";
      
      public static const const_789:String = "Array";
      
      public static const const_1171:String = "uint";
      
      public static const const_446:String = "hex";
      
      public static const const_833:String = "Map";
       
      
      private var var_568:String;
      
      private var var_181:Object;
      
      private var var_2241:Boolean;
      
      private var _type:String;
      
      private var var_2134:Boolean;
      
      public function PropertyStruct(param1:String, param2:Object, param3:String, param4:Boolean)
      {
         super();
         var_568 = param1;
         var_181 = param2;
         _type = param3;
         var_2134 = param4;
         var_2241 = param3 == const_833 || param3 == const_789 || param3 == const_610 || param3 == const_693;
      }
      
      public function get type() : String
      {
         return _type;
      }
      
      public function toString() : String
      {
         switch(_type)
         {
            case const_446:
               return "0x" + uint(var_181).toString(16);
            case const_57:
               return Boolean(var_181) == true ? "true" : "false";
            case const_610:
               return "Point(" + Point(var_181).x + ", " + Point(var_181).y + ")";
            case const_693:
               return "Rectangle(" + Rectangle(var_181).x + ", " + Rectangle(var_181).y + ", " + Rectangle(var_181).width + ", " + Rectangle(var_181).height + ")";
            default:
               return String(value);
         }
      }
      
      public function toXMLString() : String
      {
         var _loc1_:* = null;
         var _loc2_:int = 0;
         var _loc3_:* = null;
         var _loc4_:* = null;
         var _loc5_:* = null;
         var _loc6_:* = null;
         switch(_type)
         {
            case const_833:
               _loc3_ = var_181 as Map;
               _loc1_ = "<var key=\"" + var_568 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc3_.length)
               {
                  _loc1_ += "<var key=\"" + _loc3_.getKey(_loc2_) + "\" value=\"" + _loc3_.getWithIndex(_loc2_) + "\" type=\"" + getQualifiedClassName(_loc3_.getWithIndex(_loc2_)) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_789:
               _loc4_ = var_181 as Array;
               _loc1_ = "<var key=\"" + var_568 + "\">\r<value>\r<" + _type + ">\r";
               _loc2_ = 0;
               while(_loc2_ < _loc4_.length)
               {
                  _loc1_ += "<var key=\"" + String(_loc2_) + "\" value=\"" + _loc4_[_loc2_] + "\" type=\"" + getQualifiedClassName(_loc4_[_loc2_]) + "\" />\r";
                  _loc2_++;
               }
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_610:
               _loc5_ = var_181 as Point;
               _loc1_ = "<var key=\"" + var_568 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc5_.x + "\" type=\"" + const_87 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc5_.y + "\" type=\"" + const_87 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_693:
               _loc6_ = var_181 as Rectangle;
               _loc1_ = "<var key=\"" + var_568 + "\">\r<value>\r<" + _type + ">\r";
               _loc1_ += "<var key=\"x\" value=\"" + _loc6_.x + "\" type=\"" + const_87 + "\" />\r";
               _loc1_ += "<var key=\"y\" value=\"" + _loc6_.y + "\" type=\"" + const_87 + "\" />\r";
               _loc1_ += "<var key=\"width\" value=\"" + _loc6_.width + "\" type=\"" + const_87 + "\" />\r";
               _loc1_ += "<var key=\"height\" value=\"" + _loc6_.height + "\" type=\"" + const_87 + "\" />\r";
               _loc1_ += "</" + _type + ">\r</value>\r</var>";
               break;
            case const_446:
               _loc1_ = "<var key=\"" + var_568 + "\" value=\"" + "0x" + uint(var_181).toString(16) + "\" type=\"" + _type + "\" />";
               break;
            default:
               _loc1_ = "<var key=\"" + var_568 + "\" value=\"" + var_181 + "\" type=\"" + _type + "\" />";
         }
         return _loc1_;
      }
      
      public function get value() : Object
      {
         return var_181;
      }
      
      public function get valid() : Boolean
      {
         return var_2134;
      }
      
      public function get key() : String
      {
         return var_568;
      }
   }
}
