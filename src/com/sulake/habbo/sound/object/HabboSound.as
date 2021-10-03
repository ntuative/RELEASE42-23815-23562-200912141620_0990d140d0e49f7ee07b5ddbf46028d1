package com.sulake.habbo.sound.object
{
   import com.sulake.habbo.sound.IHabboSound;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class HabboSound implements IHabboSound
   {
       
      
      private var var_884:SoundChannel = null;
      
      private var var_709:Boolean;
      
      private var var_883:Sound = null;
      
      private var var_614:Number;
      
      public function HabboSound(param1:Sound)
      {
         super();
         var_883 = param1;
         var_883.addEventListener(Event.COMPLETE,onComplete);
         var_614 = 1;
         var_709 = false;
      }
      
      public function get finished() : Boolean
      {
         return !var_709;
      }
      
      public function stop() : Boolean
      {
         var_884.stop();
         return true;
      }
      
      public function play() : Boolean
      {
         var_709 = false;
         var_884 = var_883.play(0);
         this.volume = var_614;
         return true;
      }
      
      public function set position(param1:Number) : void
      {
      }
      
      public function get volume() : Number
      {
         return var_614;
      }
      
      public function get ready() : Boolean
      {
         return true;
      }
      
      public function get position() : Number
      {
         return var_884.position;
      }
      
      public function get length() : Number
      {
         return var_883.length;
      }
      
      public function set volume(param1:Number) : void
      {
         var_614 = param1;
         if(var_884 != null)
         {
            var_884.soundTransform = new SoundTransform(var_614);
         }
      }
      
      private function onComplete(param1:Event) : void
      {
         var_709 = true;
      }
   }
}
