/// @DnDAction : YoYo Games.Drawing.Set_Font
/// @DnDVersion : 1
/// @DnDHash : 7A4502E5
/// @DnDArgument : "font" "-1"
draw_set_font(-1);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 36AF4014
/// @DnDArgument : "obj" "obj_playership"
/// @DnDSaveInfo : "obj" "a68b5698-7431-41e2-8980-17f9768a53c1"
var l36AF4014_0 = false;
l36AF4014_0 = instance_exists(obj_playership);
if(l36AF4014_0)
{
	/// @DnDAction : YoYo Games.Instance Variables.Get_Health
	/// @DnDVersion : 1
	/// @DnDHash : 68779CF4
	/// @DnDParent : 36AF4014
	/// @DnDArgument : "var" "current_health"
	/// @DnDArgument : "var_temp" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	var current_health = __dnd_health;

	/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
	/// @DnDVersion : 1
	/// @DnDHash : 745C955D
	/// @DnDParent : 36AF4014
	/// @DnDArgument : "x2" "100"
	/// @DnDArgument : "y2" "30"
	/// @DnDArgument : "value" "(current_health/max_health) * 100"
	/// @DnDArgument : "backcol" "$FF0000FF"
	/// @DnDArgument : "barcol" "$FF999999"
	/// @DnDArgument : "maxcol" "$FF8CFF00"
	draw_healthbar(0, 0, 100, 30, (current_health/max_health) * 100, $FF0000FF & $FFFFFF, $FFFFFF & $FFFFFF, $FF8CFF00 & $FFFFFF, 0, (($FF0000FF>>24) != 0), (($FF999999>>24) != 0));

	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
	/// @DnDVersion : 1
	/// @DnDHash : 72161EFA
	/// @DnDParent : 36AF4014
	/// @DnDArgument : "y" "35"
	if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
	draw_text(0, 35, string("Score: ") + string(__dnd_score));

	/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
	/// @DnDVersion : 1
	/// @DnDHash : 4CAE7393
	/// @DnDParent : 36AF4014
	/// @DnDArgument : "x" "32"
	/// @DnDArgument : "y" "84"
	/// @DnDArgument : "sprite" "spr_playership"
	/// @DnDSaveInfo : "sprite" "e864f3c0-b03a-48f5-89c7-e8b45d528a61"
	var l4CAE7393_0 = sprite_get_width(spr_playership);
	var l4CAE7393_1 = 0;
	if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
	for(var l4CAE7393_2 = __dnd_lives; l4CAE7393_2 > 0; --l4CAE7393_2) {
		draw_sprite(spr_playership, 0, 32 + l4CAE7393_1, 84);
		l4CAE7393_1 += l4CAE7393_0;
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value_Transformed
	/// @DnDVersion : 1
	/// @DnDHash : 3DDC014B
	/// @DnDParent : 36AF4014
	/// @DnDArgument : "y" "150"
	/// @DnDArgument : "caption" ""Current burst pos: ""
	/// @DnDArgument : "text" "obj_playership.current_burst_pos"
	draw_text_transformed(0, 150, string("Current burst pos: ") + string(obj_playership.current_burst_pos), 1, 1, 0);

	/// @DnDAction : YoYo Games.Instance Variables.If_Health
	/// @DnDVersion : 1
	/// @DnDHash : 2387BA5B
	/// @DnDParent : 36AF4014
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	if(__dnd_health <= 0)
	{
		/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 79DB3519
		/// @DnDParent : 2387BA5B
		/// @DnDArgument : "lives" "-1"
		/// @DnDArgument : "lives_relative" "1"
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		__dnd_lives += real(-1);
	
		/// @DnDAction : YoYo Games.Instances.Change_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 6C816C74
		/// @DnDApplyTo : a68b5698-7431-41e2-8980-17f9768a53c1
		/// @DnDParent : 2387BA5B
		/// @DnDArgument : "objind" "obj_blastwave"
		/// @DnDSaveInfo : "objind" "81c1bee2-64a8-4cf8-8f76-9802e07398a5"
		with(obj_playership) instance_change(obj_blastwave, true);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 0C9B6E4E
		/// @DnDApplyTo : f3f44ec8-2cdf-4096-aae6-036e177db88f
		/// @DnDParent : 2387BA5B
		/// @DnDArgument : "expr" "0.25"
		/// @DnDArgument : "var" "time_scale"
		with(obj_roomManager) {
		time_scale = 0.25;
		
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 0D5BCFFE
		/// @DnDParent : 2387BA5B
		/// @DnDArgument : "health" "max_health"
		
		__dnd_health = real(max_health);
	
		/// @DnDAction : YoYo Games.Instances.Color_Sprite
		/// @DnDVersion : 1
		/// @DnDHash : 39263168
		/// @DnDApplyTo : 81c1bee2-64a8-4cf8-8f76-9802e07398a5
		/// @DnDParent : 2387BA5B
		with(obj_blastwave) {
		image_blend = $FFFFFFFF & $ffffff;
		image_alpha = ($FFFFFFFF >> 24) / $ff;
		}
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Image_Alpha
		/// @DnDVersion : 1
		/// @DnDHash : 7C1B3CE5
		/// @DnDApplyTo : 81c1bee2-64a8-4cf8-8f76-9802e07398a5
		/// @DnDParent : 2387BA5B
		/// @DnDArgument : "alpha" "0.75"
		with(obj_blastwave) image_alpha = 0.75;
	
		/// @DnDAction : YoYo Games.Instances.Set_Alarm
		/// @DnDVersion : 1
		/// @DnDHash : 1AC29F0B
		/// @DnDParent : 2387BA5B
		/// @DnDArgument : "steps" "room_speed*player_respawn_time"
		alarm_set(0, room_speed*player_respawn_time);
	}
}