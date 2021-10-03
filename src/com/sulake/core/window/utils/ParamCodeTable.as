package com.sulake.core.window.utils
{
   import com.sulake.core.window.enum.WindowParam;
   import flash.utils.Dictionary;
   
   public class ParamCodeTable extends WindowParam
   {
       
      
      public function ParamCodeTable()
      {
         super();
      }
      
      public static function fillTables(param1:Dictionary, param2:Dictionary = null) : void
      {
         var _loc3_:* = null;
         param1["null"] = const_95;
         param1["bound_to_parent_rect"] = const_78;
         param1["child_window"] = const_917;
         param1["embedded_controller"] = const_315;
         param1["resize_to_accommodate_children"] = const_61;
         param1["input_event_processor"] = const_44;
         param1["internal_event_handling"] = const_691;
         param1["mouse_dragging_target"] = const_195;
         param1["mouse_dragging_trigger"] = const_276;
         param1["mouse_scaling_target"] = const_232;
         param1["mouse_scaling_trigger"] = const_426;
         param1["horizontal_mouse_scaling_trigger"] = const_200;
         param1["vertical_mouse_scaling_trigger"] = const_205;
         param1["observe_parent_input_events"] = const_841;
         param1["optimize_region_to_layout_size"] = const_410;
         param1["parent_window"] = const_922;
         param1["relative_horizontal_scale_center"] = const_167;
         param1["relative_horizontal_scale_fixed"] = const_111;
         param1["relative_horizontal_scale_move"] = const_323;
         param1["relative_horizontal_scale_strech"] = const_244;
         param1["relative_scale_center"] = const_975;
         param1["relative_scale_fixed"] = const_708;
         param1["relative_scale_move"] = const_896;
         param1["relative_scale_strech"] = const_836;
         param1["relative_vertical_scale_center"] = const_157;
         param1["relative_vertical_scale_fixed"] = const_107;
         param1["relative_vertical_scale_move"] = const_299;
         param1["relative_vertical_scale_strech"] = const_256;
         param1["on_resize_align_left"] = const_668;
         param1["on_resize_align_right"] = const_385;
         param1["on_resize_align_center"] = const_425;
         param1["on_resize_align_top"] = const_614;
         param1["on_resize_align_bottom"] = const_387;
         param1["on_resize_align_middle"] = const_435;
         param1["on_accommodate_align_left"] = const_996;
         param1["on_accommodate_align_right"] = const_434;
         param1["on_accommodate_align_center"] = const_640;
         param1["on_accommodate_align_top"] = const_797;
         param1["on_accommodate_align_bottom"] = WINDOW_PARAM_ON_ACCOMMODATE_ALIGN_BOTTOM;
         param1["on_accommodate_align_middle"] = const_608;
         param1["route_input_events_to_parent"] = const_389;
         param1["use_parent_graphic_context"] = const_33;
         param1["draggable_with_mouse"] = const_944;
         param1["scalable_with_mouse"] = const_832;
         param1["reflect_horizontal_resize_to_parent"] = const_474;
         param1["reflect_vertical_resize_to_parent"] = const_362;
         param1["reflect_resize_to_parent"] = const_229;
         if(param2 != null)
         {
            for(_loc3_ in param1)
            {
               if(param2[param1[_loc3_]] != null)
               {
                  if(param1[_loc3_] != 0)
                  {
                     Logger.log("Conflictiong flags in window params: \"" + _loc3_ + "\"!");
                  }
               }
               param2[param1[_loc3_]] = _loc3_;
            }
         }
      }
   }
}
