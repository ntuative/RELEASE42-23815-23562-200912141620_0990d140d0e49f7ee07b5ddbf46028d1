package com.sulake.habbo.communication.messages.incoming.handshake
{
   import com.sulake.core.communication.messages.IMessageEvent;
   import com.sulake.core.communication.messages.MessageEvent;
   import com.sulake.habbo.communication.messages.parser.handshake.DisconnectReasonParser;
   
   public class DisconnectReasonEvent extends MessageEvent implements IMessageEvent
   {
      
      public static const const_1288:String = "DisconnectReasonPeerConnectionLost";
      
      public static const const_804:String = "DisconnectReasonTimeout";
      
      public static const const_673:String = "DisconnectReasonDisconnected";
      
      public static const const_311:String = "DisconnectReasonBanned";
      
      public static const const_806:String = "DisconnectReasonLoggedOut";
      
      public static const const_875:String = "DisconnectReasonConcurrentLogin";
       
      
      public function DisconnectReasonEvent(param1:Function)
      {
         super(param1,DisconnectReasonParser);
      }
      
      public function get reason() : String
      {
         var _loc1_:int = (this.var_21 as DisconnectReasonParser).reason;
         switch(_loc1_)
         {
            case -1:
               return const_673;
            case 0:
               return const_673;
            case 1:
               return const_806;
            case 1009:
            case 2:
               return const_875;
            case 3:
               return const_804;
            case 4:
               return const_1288;
            default:
               return const_673;
         }
      }
   }
}
