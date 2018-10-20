/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2C66A427
/// @DnDArgument : "obj" "obj_playership"
/// @DnDSaveInfo : "obj" "a68b5698-7431-41e2-8980-17f9768a53c1"
var l2C66A427_0 = false;
l2C66A427_0 = instance_exists(obj_playership);
if(l2C66A427_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 192090F4
	/// @DnDParent : 2C66A427
	/// @DnDArgument : "expr" "distance_to_object(obj_playership)"
	/// @DnDArgument : "var" "target_distance"
	target_distance = distance_to_object(obj_playership);

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 64FE2551
	/// @DnDParent : 2C66A427
	/// @DnDArgument : "var" "target_distance"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "wobble_max_range"
	if(target_distance <= wobble_max_range)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 5AD553BE
		/// @DnDParent : 64FE2551
		/// @DnDArgument : "code" "target_angle = -point_direction(x,y,obj_playership.x, obj_playership.y);$(13_10)$(13_10)wobble_scale = wobble_scale_base *(target_distance/wobble_optimal_range);$(13_10)wobble_scale = clamp(wobble_scale, 0, wobble_scale_base);$(13_10)wobble_angle_speed = (wobble_cycles_second * (wobble_angle_limit * 4)) /room_speed;$(13_10)wobble_angle_offset = wobble_angle_offset + ((wobble_angle_speed) * wobble_dir);$(13_10)$(13_10)if(wobble_angle_offset > (wobble_angle_limit*wobble_scale) && wobble_dir == 1){$(13_10)	wobble_dir = -1;$(13_10)}$(13_10)else if(wobble_angle_offset < -(wobble_angle_limit*wobble_scale) && wobble_dir == -1){$(13_10)	wobble_dir = 1;$(13_10)}$(13_10)wobble_angle = target_angle + (wobble_angle_offset);$(13_10)$(13_10)$(13_10)"
		target_angle = -point_direction(x,y,obj_playership.x, obj_playership.y);
		
		wobble_scale = wobble_scale_base *(target_distance/wobble_optimal_range);
		wobble_scale = clamp(wobble_scale, 0, wobble_scale_base);
		wobble_angle_speed = (wobble_cycles_second * (wobble_angle_limit * 4)) /room_speed;
		wobble_angle_offset = wobble_angle_offset + ((wobble_angle_speed) * wobble_dir);
		
		if(wobble_angle_offset > (wobble_angle_limit*wobble_scale) && wobble_dir == 1){
			wobble_dir = -1;
		}
		else if(wobble_angle_offset < -(wobble_angle_limit*wobble_scale) && wobble_dir == -1){
			wobble_dir = 1;
		}
		wobble_angle = target_angle + (wobble_angle_offset);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 20A04C74
		/// @DnDParent : 64FE2551
		/// @DnDArgument : "speed" "local_speed"
		speed = local_speed;
	
		/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
		/// @DnDVersion : 1
		/// @DnDHash : 33903E39
		/// @DnDParent : 64FE2551
		/// @DnDArgument : "angle" "90 -target_angle"
		image_angle = 90 -target_angle;
	
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
		/// @DnDVersion : 1
		/// @DnDHash : 3EA932BD
		/// @DnDParent : 64FE2551
		/// @DnDArgument : "direction" "-wobble_angle"
		direction = -wobble_angle;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 1ABD8F8B
		/// @DnDDisabled : 1
		/// @DnDParent : 64FE2551
		/// @DnDArgument : "speed" " vspeed + obj_roomManager.lvl_vspeed_actual"
		/// @DnDArgument : "type" "2"
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 35F35D4B
	/// @DnDParent : 2C66A427
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
		/// @DnDVersion : 1
		/// @DnDHash : 2A8CB8C5
		/// @DnDParent : 35F35D4B
		/// @DnDArgument : "direction" "270"
		direction = 270;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 7D0BB799
		/// @DnDParent : 35F35D4B
		/// @DnDArgument : "speed" "obj_roomManager.lvl_vspeed_actual"
		/// @DnDArgument : "type" "2"
		vspeed = obj_roomManager.lvl_vspeed_actual;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 1121A0FB
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Direction_Free
	/// @DnDVersion : 1
	/// @DnDHash : 39B899E3
	/// @DnDParent : 1121A0FB
	/// @DnDArgument : "direction" "270"
	direction = 270;

	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0201CC4B
	/// @DnDParent : 1121A0FB
	/// @DnDArgument : "speed" "obj_roomManager.lvl_vspeed_actual"
	/// @DnDArgument : "type" "2"
	vspeed = obj_roomManager.lvl_vspeed_actual;
}