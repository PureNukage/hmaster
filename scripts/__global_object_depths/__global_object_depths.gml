// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // o_rage
global.__objectDepths[1] = 0; // o_invisible_wall
global.__objectDepths[2] = 0; // o_invisiblewall_1_3
global.__objectDepths[3] = 0; // o_jumpbox_1_2
global.__objectDepths[4] = 0; // o_player_shadow
global.__objectDepths[5] = 0; // o_ramp
global.__objectDepths[6] = 0; // o_invisiblewall_1_4
global.__objectDepths[7] = 0; // o_invisiblewall_1_2
global.__objectDepths[8] = 0; // o_invisible_wall_1_4_temp
global.__objectDepths[9] = 0; // o_invisiblewall_1_1
global.__objectDepths[10] = 0; // o_invisiblewall_1_5
global.__objectDepths[11] = 0; // o_invisible_wall_1_5_temp
global.__objectDepths[12] = 0; // o_jumpbox_hor
global.__objectDepths[13] = 0; // o_jumpbox_ver
global.__objectDepths[14] = 0; // o_ramp_1_1
global.__objectDepths[15] = 0; // o_jumpbox_1_1
global.__objectDepths[16] = 0; // o_pause
global.__objectDepths[17] = 0; // o_jumpbox_1_3
global.__objectDepths[18] = 0; // o_player
global.__objectDepths[19] = 0; // o_jumpoff
global.__objectDepths[20] = -998; // o_doorway_1_2
global.__objectDepths[21] = 0; // o_health
global.__objectDepths[22] = 0; // o_debug
global.__objectDepths[23] = -999; // o_restaurant_forefront_1
global.__objectDepths[24] = 0; // o_player_hitbox
global.__objectDepths[25] = 0; // o_doorway_1_1
global.__objectDepths[26] = 0; // o_vent
global.__objectDepths[27] = -1000; // o_restaurant_forefront_2
global.__objectDepths[28] = 0; // o_thug_shadow
global.__objectDepths[29] = 0; // o_rooftop
global.__objectDepths[30] = 0; // o_thug_boss_shadow
global.__objectDepths[31] = 0; // o_thug_boss_hitbox
global.__objectDepths[32] = 0; // o_thug_hitbox
global.__objectDepths[33] = 0; // o_hitbox_parent
global.__objectDepths[34] = 0; // o_thug
global.__objectDepths[35] = 1000; // o_battlezone
global.__objectDepths[36] = 0; // o_doorway_1_3
global.__objectDepths[37] = 0; // o_collision
global.__objectDepths[38] = 0; // o_thug_boss


global.__objectNames[0] = "o_rage";
global.__objectNames[1] = "o_invisible_wall";
global.__objectNames[2] = "o_invisiblewall_1_3";
global.__objectNames[3] = "o_jumpbox_1_2";
global.__objectNames[4] = "o_player_shadow";
global.__objectNames[5] = "o_ramp";
global.__objectNames[6] = "o_invisiblewall_1_4";
global.__objectNames[7] = "o_invisiblewall_1_2";
global.__objectNames[8] = "o_invisible_wall_1_4_temp";
global.__objectNames[9] = "o_invisiblewall_1_1";
global.__objectNames[10] = "o_invisiblewall_1_5";
global.__objectNames[11] = "o_invisible_wall_1_5_temp";
global.__objectNames[12] = "o_jumpbox_hor";
global.__objectNames[13] = "o_jumpbox_ver";
global.__objectNames[14] = "o_ramp_1_1";
global.__objectNames[15] = "o_jumpbox_1_1";
global.__objectNames[16] = "o_pause";
global.__objectNames[17] = "o_jumpbox_1_3";
global.__objectNames[18] = "o_player";
global.__objectNames[19] = "o_jumpoff";
global.__objectNames[20] = "o_doorway_1_2";
global.__objectNames[21] = "o_health";
global.__objectNames[22] = "o_debug";
global.__objectNames[23] = "o_restaurant_forefront_1";
global.__objectNames[24] = "o_player_hitbox";
global.__objectNames[25] = "o_doorway_1_1";
global.__objectNames[26] = "o_vent";
global.__objectNames[27] = "o_restaurant_forefront_2";
global.__objectNames[28] = "o_thug_shadow";
global.__objectNames[29] = "o_rooftop";
global.__objectNames[30] = "o_thug_boss_shadow";
global.__objectNames[31] = "o_thug_boss_hitbox";
global.__objectNames[32] = "o_thug_hitbox";
global.__objectNames[33] = "o_hitbox_parent";
global.__objectNames[34] = "o_thug";
global.__objectNames[35] = "o_battlezone";
global.__objectNames[36] = "o_doorway_1_3";
global.__objectNames[37] = "o_collision";
global.__objectNames[38] = "o_thug_boss";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for