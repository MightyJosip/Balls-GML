// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // obj_controller_menu
global.__objectDepths[1] = 0; // obj_show_stats_normal
global.__objectDepths[2] = 0; // obj_show_stats_frenzy
global.__objectDepths[3] = 0; // obj_controller_normal
global.__objectDepths[4] = 0; // obj_controller_frenzy
global.__objectDepths[5] = 0; // obj_power_shop
global.__objectDepths[6] = 1; // obj_ball_shop
global.__objectDepths[7] = 0; // obj_clock
global.__objectDepths[8] = 0; // obj_bounce
global.__objectDepths[9] = 0; // obj_double
global.__objectDepths[10] = 0; // obj_slow
global.__objectDepths[11] = 0; // obj_gold
global.__objectDepths[12] = 0; // obj_ball
global.__objectDepths[13] = 0; // obj_main_start
global.__objectDepths[14] = 0; // obj_play_normal
global.__objectDepths[15] = 0; // obj_play_frenzy
global.__objectDepths[16] = 0; // obj_select_shop
global.__objectDepths[17] = 0; // obj_back_to_shop
global.__objectDepths[18] = 0; // obj_power_up_shop
global.__objectDepths[19] = 0; // obj_balls_shop
global.__objectDepths[20] = 0; // obj_select_stats
global.__objectDepths[21] = 0; // obj_back_to_stats
global.__objectDepths[22] = 0; // obj_normal_stats
global.__objectDepths[23] = 0; // obj_frenzy_stats
global.__objectDepths[24] = 0; // obj_return_main
global.__objectDepths[25] = 0; // obj_buy_football
global.__objectDepths[26] = 0; // obj_buy_tennis
global.__objectDepths[27] = 0; // obj_buy_volleyball
global.__objectDepths[28] = 0; // obj_buy_slow
global.__objectDepths[29] = 0; // obj_buy_double
global.__objectDepths[30] = 0; // obj_buy_bounce
global.__objectDepths[31] = 0; // obj_buy_spawn_rate
global.__objectDepths[32] = 0; // obj_quit
global.__objectDepths[33] = 0; // srt
global.__objectDepths[34] = 0; // ads


global.__objectNames[0] = "obj_controller_menu";
global.__objectNames[1] = "obj_show_stats_normal";
global.__objectNames[2] = "obj_show_stats_frenzy";
global.__objectNames[3] = "obj_controller_normal";
global.__objectNames[4] = "obj_controller_frenzy";
global.__objectNames[5] = "obj_power_shop";
global.__objectNames[6] = "obj_ball_shop";
global.__objectNames[7] = "obj_clock";
global.__objectNames[8] = "obj_bounce";
global.__objectNames[9] = "obj_double";
global.__objectNames[10] = "obj_slow";
global.__objectNames[11] = "obj_gold";
global.__objectNames[12] = "obj_ball";
global.__objectNames[13] = "obj_main_start";
global.__objectNames[14] = "obj_play_normal";
global.__objectNames[15] = "obj_play_frenzy";
global.__objectNames[16] = "obj_select_shop";
global.__objectNames[17] = "obj_back_to_shop";
global.__objectNames[18] = "obj_power_up_shop";
global.__objectNames[19] = "obj_balls_shop";
global.__objectNames[20] = "obj_select_stats";
global.__objectNames[21] = "obj_back_to_stats";
global.__objectNames[22] = "obj_normal_stats";
global.__objectNames[23] = "obj_frenzy_stats";
global.__objectNames[24] = "obj_return_main";
global.__objectNames[25] = "obj_buy_football";
global.__objectNames[26] = "obj_buy_tennis";
global.__objectNames[27] = "obj_buy_volleyball";
global.__objectNames[28] = "obj_buy_slow";
global.__objectNames[29] = "obj_buy_double";
global.__objectNames[30] = "obj_buy_bounce";
global.__objectNames[31] = "obj_buy_spawn_rate";
global.__objectNames[32] = "obj_quit";
global.__objectNames[33] = "srt";
global.__objectNames[34] = "ads";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for