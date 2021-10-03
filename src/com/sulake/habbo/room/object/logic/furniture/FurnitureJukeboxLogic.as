package com.sulake.habbo.room.object.logic.furniture
{
   import com.sulake.habbo.room.events.RoomObjectFurnitureActionEvent;
   import com.sulake.habbo.room.object.RoomObjectVariableEnum;
   import com.sulake.room.messages.RoomObjectUpdateMessage;
   
   public class FurnitureJukeboxLogic extends FurnitureMultiStateLogic
   {
       
      
      private var var_1970:Boolean;
      
      public function FurnitureJukeboxLogic()
      {
         super();
      }
      
      private function requestDispose() : void
      {
         if(object == null || eventDispatcher == null)
         {
            return;
         }
         var _loc1_:RoomObjectFurnitureActionEvent = new RoomObjectFurnitureActionEvent(RoomObjectFurnitureActionEvent.const_440,object.getId(),object.getType());
         eventDispatcher.dispatchEvent(_loc1_);
      }
      
      override public function dispose() : void
      {
         requestDispose();
         super.dispose();
      }
      
      private function requestInit() : void
      {
         if(object == null || eventDispatcher == null)
         {
            return;
         }
         var _loc1_:RoomObjectFurnitureActionEvent = new RoomObjectFurnitureActionEvent(RoomObjectFurnitureActionEvent.const_473,object.getId(),object.getType());
         eventDispatcher.dispatchEvent(_loc1_);
         var_1970 = true;
      }
      
      override public function processUpdateMessage(param1:RoomObjectUpdateMessage) : void
      {
         super.processUpdateMessage(param1);
         if(object.getModelController().getNumber(RoomObjectVariableEnum.const_861) == 1 && !var_1970)
         {
            requestInit();
         }
      }
   }
}
