package com.sulake.habbo.navigator.domain
{
   import com.sulake.habbo.navigator.HabboNavigator;
   import com.sulake.habbo.navigator.mainview.MainViewCtrl;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.EventsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.MyRoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.OfficialTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.RoomsTabPageDecorator;
   import com.sulake.habbo.navigator.mainview.tabpagedecorators.SearchTabPageDecorator;
   
   public class Tabs
   {
      
      public static const const_643:int = 6;
      
      public static const const_212:int = 5;
      
      public static const const_639:int = 2;
      
      public static const const_278:int = 9;
      
      public static const const_249:int = 4;
      
      public static const const_247:int = 2;
      
      public static const const_727:int = 4;
      
      public static const const_199:int = 8;
      
      public static const const_517:int = 7;
      
      public static const const_259:int = 3;
      
      public static const const_309:int = 1;
      
      public static const const_198:int = 5;
      
      public static const const_460:int = 12;
      
      public static const const_305:int = 1;
      
      public static const const_467:int = 11;
      
      public static const const_558:int = 3;
      
      public static const const_1411:int = 10;
       
      
      private var _navigator:HabboNavigator;
      
      private var var_377:Array;
      
      public function Tabs(param1:HabboNavigator)
      {
         super();
         _navigator = param1;
         var_377 = new Array();
         var_377.push(new Tab(_navigator,const_309,const_460,new EventsTabPageDecorator(_navigator),MainViewCtrl.const_386));
         var_377.push(new Tab(_navigator,const_247,const_305,new RoomsTabPageDecorator(_navigator),MainViewCtrl.const_386));
         var_377.push(new Tab(_navigator,const_249,const_467,new OfficialTabPageDecorator(_navigator),MainViewCtrl.const_559));
         var_377.push(new Tab(_navigator,const_259,const_212,new MyRoomsTabPageDecorator(_navigator),MainViewCtrl.const_386));
         var_377.push(new Tab(_navigator,const_198,const_199,new SearchTabPageDecorator(_navigator),MainViewCtrl.const_721));
         setSelectedTab(const_309);
      }
      
      public function getSelected() : Tab
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_377)
         {
            if(_loc1_.selected)
            {
               return _loc1_;
            }
         }
         return null;
      }
      
      public function getTab(param1:int) : Tab
      {
         var _loc2_:* = null;
         for each(_loc2_ in var_377)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function clearSelected() : void
      {
         var _loc1_:* = null;
         for each(_loc1_ in var_377)
         {
            _loc1_.selected = false;
         }
      }
      
      public function onFrontPage() : Boolean
      {
         return this.getSelected().id == const_249;
      }
      
      public function get tabs() : Array
      {
         return var_377;
      }
      
      public function setSelectedTab(param1:int) : void
      {
         this.clearSelected();
         getTab(param1).selected = true;
      }
   }
}
