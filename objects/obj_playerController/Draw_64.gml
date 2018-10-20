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
	
		/// @DnDAction : YoYo Games.Movement.Jump_To_Start
		/// @DnDVersion : 1
		/// @DnDHash : 7BD5CB87
		/// @DnDParent : 2387BA5B
		x = xstart;
		y = ystart;
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Health
		/// @DnDVersion : 1
		/// @DnDHash : 0D5BCFFE
		/// @DnDParent : 2387BA5B
		/// @DnDArgument : "health" "max_health"
		
		__dnd_health = real(max_health);
	
		/// @DnDAction : YoYo Games.Instance Variables.If_Lives
		/// @DnDVersion : 1
		/// @DnDHash : 6E9237D0
		/// @DnDParent : 2387BA5B
		/// @DnDArgument : "op" "1"
		if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
		if(__dnd_lives < 0)
		{
			/// @DnDAction : YoYo Games.Instances.Destroy_Instance
			/// @DnDVersion : 1
			/// @DnDHash : 31FDE2B1
			/// @DnDApplyTo : a68b5698-7431-41e2-8980-17f9768a53c1
			/// @DnDParent : 6E9237D0
			with(obj_playership) instance_destroy();
		}
	}
}