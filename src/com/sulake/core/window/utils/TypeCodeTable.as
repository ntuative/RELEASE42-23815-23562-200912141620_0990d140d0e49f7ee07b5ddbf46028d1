package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowType;
   import flash.utils.Dictionary;
   
   public class TypeCodeTable extends WindowType
   {
       
      
      public function TypeCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["background"] = const_594;
         param1["bitmap"] = const_628;
         param1["border"] = const_647;
         param1["border_notify"] = const_1272;
         param1["button"] = const_433;
         param1["button_thick"] = const_634;
         param1["button_icon"] = const_1327;
         param1["button_group_left"] = const_665;
         param1["button_group_center"] = const_544;
         param1["button_group_right"] = const_530;
         param1["canvas"] = const_519;
         param1["checkbox"] = const_613;
         param1["closebutton"] = const_943;
         param1["container"] = const_302;
         param1["container_button"] = const_564;
         param1["display_object_wrapper"] = const_728;
         param1["dropmenu"] = const_409;
         param1["dropmenu_item"] = const_477;
         param1["frame"] = const_297;
         param1["frame_notify"] = const_1162;
         param1["header"] = const_702;
         param1["icon"] = const_949;
         param1["itemgrid"] = const_866;
         param1["itemgrid_horizontal"] = const_358;
         param1["itemgrid_vertical"] = const_515;
         param1["itemlist"] = const_913;
         param1["itemlist_horizontal"] = const_283;
         param1["itemlist_vertical"] = const_294;
         param1["maximizebox"] = const_1347;
         param1["menu"] = const_1191;
         param1["menu_item"] = WINDOW_TYPE_MENU_ITEM;
         param1["submenu"] = const_847;
         param1["minimizebox"] = const_1217;
         param1["notify"] = const_1317;
         param1["null"] = const_381;
         param1["password"] = const_712;
         param1["radiobutton"] = const_587;
         param1["region"] = const_354;
         param1["restorebox"] = const_1298;
         param1["scaler"] = const_772;
         param1["scaler_horizontal"] = const_1321;
         param1["scaler_vertical"] = const_1309;
         param1["scrollbar_horizontal"] = const_363;
         param1["scrollbar_vertical"] = const_611;
         param1["scrollbar_slider_button_up"] = const_859;
         param1["scrollbar_slider_button_down"] = const_910;
         param1["scrollbar_slider_button_left"] = const_982;
         param1["scrollbar_slider_button_right"] = const_972;
         param1["scrollbar_slider_bar_horizontal"] = const_907;
         param1["scrollbar_slider_bar_vertical"] = const_842;
         param1["scrollbar_slider_track_horizontal"] = const_786;
         param1["scrollbar_slider_track_vertical"] = const_879;
         param1["scrollable_itemlist"] = const_1259;
         param1["scrollable_itemlist_vertical"] = const_432;
         param1["scrollable_itemlist_horizontal"] = const_899;
         param1["selector"] = const_621;
         param1["selector_list"] = const_662;
         param1["submenu"] = const_847;
         param1["tab_button"] = const_607;
         param1["tab_container_button"] = const_890;
         param1["tab_context"] = const_355;
         param1["tab_content"] = const_803;
         param1["tab_selector"] = WINDOW_TYPE_TAB_SELECTOR;
         param1["text"] = const_579;
         param1["input"] = const_659;
         param1["toolbar"] = const_1172;
         param1["tooltip"] = WINDOW_TYPE_TOOLTIP;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  Logger.log("Overlapping window type code " + _loc3_ + "!");
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
