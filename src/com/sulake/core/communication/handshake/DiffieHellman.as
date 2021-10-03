package com.sulake.core.communication.handshake
{
   import com.hurlant.math.BigInteger;
   
   public class DiffieHellman implements IKeyExchange
   {
       
      
      private var var_1475:BigInteger;
      
      private var var_924:BigInteger;
      
      private var var_2054:BigInteger;
      
      private var var_1474:BigInteger;
      
      private var var_2055:BigInteger;
      
      private var var_1875:BigInteger;
      
      public function DiffieHellman(param1:BigInteger, param2:BigInteger)
      {
         super();
         var_1475 = param1;
         var_2054 = param2;
      }
      
      public function getSharedKey(param1:uint = 16) : String
      {
         return var_2055.toRadix(param1);
      }
      
      public function generateSharedKey(param1:String, param2:uint = 16) : String
      {
         var_1474 = new BigInteger();
         var_1474.fromRadix(param1,param2);
         var_2055 = var_1474.modPow(var_924,var_1475);
         return getSharedKey(param2);
      }
      
      public function getPublicKey(param1:uint = 16) : String
      {
         return var_1875.toRadix(param1);
      }
      
      public function init(param1:String, param2:uint = 16) : Boolean
      {
         var_924 = new BigInteger();
         var_924.fromRadix(param1,param2);
         var_1875 = var_2054.modPow(var_924,var_1475);
         return true;
      }
   }
}
