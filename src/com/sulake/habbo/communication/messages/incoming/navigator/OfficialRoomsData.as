package com.sulake.habbo.communication.messages.incoming.navigator
{
   import com.sulake.core.communication.messages.IMessageDataWrapper;
   import com.sulake.core.runtime.IDisposable;
   
   public class OfficialRoomsData implements IDisposable, MsgWithRequestId
   {
       
      
      private var var_1160:Array;
      
      private var _disposed:Boolean;
      
      private var var_642:Array;
      
      public function OfficialRoomsData(param1:IMessageDataWrapper)
      {
         var _loc6_:* = null;
         var_1160 = new Array();
         var_642 = new Array();
         super();
         var _loc2_:int = param1.readInteger();
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            var_1160.push(new NavigationNodeData(param1.readInteger(),param1.readString()));
            _loc3_++;
         }
         var _loc4_:int = param1.readInteger();
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            _loc6_ = new OfficialRoomEntryData(_loc5_,param1);
            var_642.push(_loc6_);
            if(_loc6_.type == OfficialRoomEntryData.const_870)
            {
               var_1160.push(new NavigationNodeData(_loc6_.flatCategoryId,_loc6_.popupCaption));
            }
            _loc5_++;
         }
      }
      
      public function get disposed() : Boolean
      {
         return _disposed;
      }
      
      public function get topLevelNodes() : Array
      {
         return var_1160;
      }
      
      public function dispose() : void
      {
         var _loc1_:* = null;
         if(_disposed)
         {
            return;
         }
         _disposed = true;
         if(var_642 != null)
         {
            for each(_loc1_ in var_642)
            {
               _loc1_.dispose();
            }
         }
         var_642 = null;
      }
      
      public function get entries() : Array
      {
         return var_642;
      }
   }
}
