package deng.fzip
{
   import deng.utils.ChecksumUtil;
   import flash.utils.*;
   
   public class FZipFile
   {
      
      public static const const_513:int = 8;
      
      public static const const_1412:int = 10;
      
      public static const const_1144:int = 6;
      
      private static var var_918:Boolean = describeType(ByteArray).factory.method.(@name == "uncompress").hasComplexContent();
      
      public static const const_1215:int = 0;
      
      public static const const_1468:int = 1;
      
      public static const const_1536:int = 2;
      
      public static const const_1461:int = 3;
      
      public static const const_1483:int = 4;
      
      public static const const_1446:int = 5;
      
      public static const const_1415:int = 9;
      
      public static const const_1469:int = 7;
       
      
      private var var_165:uint = 0;
      
      private var var_917:uint = 0;
      
      private var var_603:Date;
      
      private var var_1668:int = -1;
      
      private var parseFunc:Function;
      
      private var var_434:Boolean = false;
      
      private var var_2201:int = -1;
      
      private var var_1096:uint = 0;
      
      private var var_1666:String = "";
      
      private var _extraFields:Dictionary;
      
      private var var_739:uint;
      
      private var var_34:ByteArray;
      
      private var var_604:uint;
      
      private var var_1344:Boolean = false;
      
      private var var_2202:int = -1;
      
      private var var_1345:String = "2.0";
      
      private var var_164:Boolean = false;
      
      private var var_1667:Boolean = false;
      
      private var var_323:String;
      
      private var var_515:uint = 0;
      
      private var var_1097:int = 0;
      
      private var var_365:String = "";
      
      private var var_602:int = 8;
      
      private var var_1343:Boolean = false;
      
      public function FZipFile(param1:String = "utf-8")
      {
         parseFunc = parseFileHead;
         super();
         var_323 = param1;
         _extraFields = new Dictionary();
         var_34 = new ByteArray();
         var_34.endian = Endian.BIG_ENDIAN;
      }
      
      public function get sizeUncompressed() : uint
      {
         return var_515;
      }
      
      public function set filename(param1:String) : void
      {
         var_365 = param1;
      }
      
      protected function uncompress() : void
      {
         if(var_164 && false)
         {
            var_34.position = 0;
            if(var_918)
            {
               var_34.uncompress.apply(var_34,["deflate"]);
            }
            else
            {
               var_34.uncompress();
            }
            var_34.position = 0;
            var_164 = false;
         }
      }
      
      public function get filename() : String
      {
         return var_365;
      }
      
      public function get date() : Date
      {
         return var_603;
      }
      
      function parse(param1:IDataInput) : Boolean
      {
         while(param1.bytesAvailable && parseFunc(param1))
         {
         }
         return parseFunc === parseFileIdle;
      }
      
      private function parseFileContent(param1:IDataInput) : Boolean
      {
         if(var_1343)
         {
            parseFunc = parseFileIdle;
            throw new Error("Data descriptors are not supported.");
         }
         if(var_165 == 0)
         {
            parseFunc = parseFileIdle;
         }
         else
         {
            if(param1.bytesAvailable < var_165)
            {
               return false;
            }
            parseContent(param1);
            parseFunc = parseFileIdle;
         }
         return true;
      }
      
      public function get versionNumber() : String
      {
         return var_1345;
      }
      
      public function getContentAsString(param1:Boolean = true, param2:String = "utf-8") : String
      {
         var _loc3_:* = null;
         if(var_164)
         {
            uncompress();
         }
         var_34.position = 0;
         if(param2 == "utf-8")
         {
            _loc3_ = var_34.readUTFBytes(var_34.bytesAvailable);
         }
         else
         {
            _loc3_ = var_34.readMultiByte(var_34.bytesAvailable,param2);
         }
         var_34.position = 0;
         if(param1)
         {
            compress();
         }
         return _loc3_;
      }
      
      private function parseFileIdle(param1:IDataInput) : Boolean
      {
         return false;
      }
      
      protected function parseContent(param1:IDataInput) : void
      {
         var _loc2_:* = 0;
         if(var_602 === const_513 && !var_1344)
         {
            if(var_918)
            {
               param1.readBytes(var_34,0,var_165);
            }
            else
            {
               if(!var_434)
               {
                  throw new Error("Adler32 checksum not found.");
               }
               var_34.writeByte(120);
               _loc2_ = uint(~var_1668 << 6 & 192);
               _loc2_ += 31 - (30720 | _loc2_) % 31;
               var_34.writeByte(_loc2_);
               param1.readBytes(var_34,2,var_165);
               var_34.position = var_34.length;
               var_34.writeUnsignedInt(var_739);
            }
            var_164 = true;
         }
         else
         {
            if(var_602 != const_1215)
            {
               throw new Error("Compression method " + var_602 + " is not supported.");
            }
            param1.readBytes(var_34,0,var_165);
            var_164 = false;
         }
         var_34.position = 0;
      }
      
      private function parseFileHead(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= 30)
         {
            parseHead(param1);
            if(var_917 + var_1096 > 0)
            {
               parseFunc = parseFileHeadExt;
            }
            else
            {
               parseFunc = parseFileContent;
            }
            return true;
         }
         return false;
      }
      
      public function setContentAsString(param1:String, param2:String = "utf-8") : void
      {
         var_34.length = 0;
         var_34.position = 0;
         var_164 = false;
         if(param1 != null && param1.length > 0)
         {
            if(param2 == "utf-8")
            {
               var_34.writeUTFBytes(param1);
            }
            else
            {
               var_34.writeMultiByte(param1,param2);
            }
            var_604 = ChecksumUtil.CRC32(var_34);
            var_434 = false;
         }
         compress();
      }
      
      public function set date(param1:Date) : void
      {
         var_603 = param1 != null ? param1 : new Date();
      }
      
      public function serialize(param1:IDataOutput, param2:Boolean, param3:Boolean = false, param4:uint = 0) : uint
      {
         var _loc10_:* = null;
         var _loc15_:* = null;
         var _loc16_:Boolean = false;
         if(param1 == null)
         {
            return 0;
         }
         if(param3)
         {
            param1.writeUnsignedInt(33639248);
            param1.writeShort(var_1097 << 8 | 20);
         }
         else
         {
            param1.writeUnsignedInt(67324752);
         }
         param1.writeShort(var_1097 << 8 | 20);
         param1.writeShort(var_323 == "utf-8" ? 2048 : 0);
         param1.writeShort(const_513);
         var _loc5_:Date = var_603 != null ? var_603 : new Date();
         var _loc6_:uint = uint(_loc5_.getSeconds()) | uint(_loc5_.getMinutes()) << 5 | uint(_loc5_.getHours()) << 11;
         var _loc7_:uint = uint(_loc5_.getDate()) | uint(_loc5_.getMonth() + 1) << 5 | uint(_loc5_.getFullYear() - 1980) << 9;
         param1.writeShort(_loc6_);
         param1.writeShort(_loc7_);
         param1.writeUnsignedInt(var_604);
         param1.writeUnsignedInt(var_165);
         param1.writeUnsignedInt(var_515);
         var _loc8_:ByteArray = new ByteArray();
         _loc8_.endian = Endian.LITTLE_ENDIAN;
         if(var_323 == "utf-8")
         {
            _loc8_.writeUTFBytes(var_365);
         }
         else
         {
            _loc8_.writeMultiByte(var_365,var_323);
         }
         var _loc9_:uint = _loc8_.position;
         for(_loc10_ in _extraFields)
         {
            _loc15_ = _extraFields[_loc10_] as ByteArray;
            if(_loc15_ != null)
            {
               _loc8_.writeShort(uint(_loc10_));
               _loc8_.writeShort(uint(_loc15_.length));
               _loc8_.writeBytes(_loc15_);
            }
         }
         if(param2)
         {
            if(!var_434)
            {
               _loc16_ = var_164;
               if(_loc16_)
               {
                  uncompress();
               }
               var_739 = ChecksumUtil.Adler32(var_34,0,var_34.length);
               var_434 = true;
               if(_loc16_)
               {
                  compress();
               }
            }
            _loc8_.writeShort(56026);
            _loc8_.writeShort(4);
            _loc8_.writeUnsignedInt(var_739);
         }
         var _loc11_:uint = _loc8_.position - _loc9_;
         if(param3 && false)
         {
            if(var_323 == "utf-8")
            {
               _loc8_.writeUTFBytes(var_1666);
            }
            else
            {
               _loc8_.writeMultiByte(var_1666,var_323);
            }
         }
         var _loc12_:uint = _loc8_.position - _loc9_ - _loc11_;
         param1.writeShort(_loc9_);
         param1.writeShort(_loc11_);
         if(param3)
         {
            param1.writeShort(_loc12_);
            param1.writeShort(0);
            param1.writeShort(0);
            param1.writeUnsignedInt(0);
            param1.writeUnsignedInt(param4);
         }
         if(_loc9_ + _loc11_ + _loc12_ > 0)
         {
            param1.writeBytes(_loc8_);
         }
         var _loc13_:int = 0;
         if(!param3 && var_165 > 0)
         {
            if(var_918)
            {
               _loc13_ = 0;
               param1.writeBytes(var_34,0,_loc13_);
            }
            else
            {
               _loc13_ = 4294967290;
               param1.writeBytes(var_34,2,_loc13_);
            }
         }
         var _loc14_:uint = 30 + _loc9_ + _loc11_ + _loc12_ + _loc13_;
         if(param3)
         {
            _loc14_ += 16;
         }
         return _loc14_;
      }
      
      public function get sizeCompressed() : uint
      {
         return var_165;
      }
      
      protected function compress() : void
      {
         if(!var_164)
         {
            if(false)
            {
               var_34.position = 0;
               var_515 = var_34.length;
               if(var_918)
               {
                  var_34.compress.apply(var_34,["deflate"]);
                  var_165 = var_34.length;
               }
               else
               {
                  var_34.compress();
                  var_165 = -6;
               }
               var_34.position = 0;
               var_164 = true;
            }
            else
            {
               var_165 = 0;
               var_515 = 0;
            }
         }
      }
      
      private function parseFileHeadExt(param1:IDataInput) : Boolean
      {
         if(param1.bytesAvailable >= var_917 + var_1096)
         {
            parseHeadExt(param1);
            parseFunc = parseFileContent;
            return true;
         }
         return false;
      }
      
      protected function parseHeadExt(param1:IDataInput) : void
      {
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = null;
         if(var_323 == "utf-8")
         {
            var_365 = param1.readUTFBytes(var_917);
         }
         else
         {
            var_365 = param1.readMultiByte(var_917,var_323);
         }
         var _loc2_:uint = var_1096;
         while(_loc2_ > 4)
         {
            _loc3_ = uint(param1.readUnsignedShort());
            _loc4_ = uint(param1.readUnsignedShort());
            if(_loc4_ > _loc2_)
            {
               throw new Error("Parse error in file " + var_365 + ": Extra field data size too big.");
            }
            if(_loc3_ === 56026 && _loc4_ === 4)
            {
               var_739 = param1.readUnsignedInt();
               var_434 = true;
            }
            else if(_loc4_ > 0)
            {
               _loc5_ = new ByteArray();
               param1.readBytes(_loc5_,0,_loc4_);
               _extraFields[_loc3_] = _loc5_;
            }
            _loc2_ -= _loc4_ + 4;
         }
         if(_loc2_ > 0)
         {
            param1.readBytes(new ByteArray(),0,_loc2_);
         }
      }
      
      protected function parseHead(param1:IDataInput) : void
      {
         var _loc2_:uint = param1.readUnsignedShort();
         var_1097 = _loc2_ >> 8;
         var_1345 = Math.floor((_loc2_ & 255) / 10) + "." + (_loc2_ & 255) % 10;
         var _loc3_:uint = param1.readUnsignedShort();
         var_602 = param1.readUnsignedShort();
         var_1344 = (_loc3_ & 1) !== 0;
         var_1343 = (_loc3_ & 8) !== 0;
         var_1667 = (_loc3_ & 32) !== 0;
         if((_loc3_ & 800) !== 0)
         {
            var_323 = "utf-8";
         }
         if(var_602 === const_1144)
         {
            var_2202 = (_loc3_ & 2) !== 0 ? 8192 : 4096;
            var_2201 = (_loc3_ & 4) !== 0 ? 3 : 2;
         }
         else if(var_602 === const_513)
         {
            var_1668 = (_loc3_ & 6) >> 1;
         }
         var _loc4_:uint = param1.readUnsignedShort();
         var _loc5_:uint = param1.readUnsignedShort();
         var _loc6_:* = _loc4_ & 31;
         var _loc7_:* = (_loc4_ & 2016) >> 5;
         var _loc8_:* = (_loc4_ & 63488) >> 11;
         var _loc9_:* = _loc5_ & 31;
         var _loc10_:* = (_loc5_ & 480) >> 5;
         var _loc11_:int = ((_loc5_ & 65024) >> 9) + 1980;
         var_603 = new Date(_loc11_,_loc10_ - 1,_loc9_,_loc8_,_loc7_,_loc6_,0);
         var_604 = param1.readUnsignedInt();
         var_165 = param1.readUnsignedInt();
         var_515 = param1.readUnsignedInt();
         var_917 = param1.readUnsignedShort();
         var_1096 = param1.readUnsignedShort();
      }
      
      public function set content(param1:ByteArray) : void
      {
         if(param1 != null && param1.length > 0)
         {
            param1.position = 0;
            param1.readBytes(var_34,0,param1.length);
            var_604 = ChecksumUtil.CRC32(var_34);
            var_434 = false;
         }
         else
         {
            var_34.length = 0;
            var_34.position = 0;
            var_164 = false;
         }
         compress();
      }
      
      public function toString() : String
      {
         return "[FZipFile]\n  name:" + var_365 + "\n  date:" + var_603 + "\n  sizeCompressed:" + var_165 + "\n  sizeUncompressed:" + var_515 + "\n  versionHost:" + var_1097 + "\n  versionNumber:" + var_1345 + "\n  compressionMethod:" + var_602 + "\n  encrypted:" + var_1344 + "\n  hasDataDescriptor:" + var_1343 + "\n  hasCompressedPatchedData:" + var_1667 + "\n  filenameEncoding:" + var_323 + "\n  crc32:" + var_604.toString(16) + "\n  adler32:" + var_739.toString(16);
      }
      
      public function get content() : ByteArray
      {
         if(var_164)
         {
            uncompress();
         }
         return var_34;
      }
   }
}
