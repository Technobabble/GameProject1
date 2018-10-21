/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 0C80F053
speed = 0;

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 2BD35903
/// @DnDArgument : "obj" "obj_playership"
/// @DnDSaveInfo : "obj" "a68b5698-7431-41e2-8980-17f9768a53c1"
var l2BD35903_0 = false;
l2BD35903_0 = instance_exists(obj_playership);
if(l2BD35903_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 33141E4F
	/// @DnDParent : 2BD35903
	/// @DnDArgument : "var" "distance_to_object(obj_playership)"
	/// @DnDArgument : "op" "3"
	/// @DnDArgument : "value" "400"
	if(distance_to_object(obj_playership) <= 400)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Direction_Point
		/// @DnDVersion : 1
		/// @DnDHash : 3CB870CD
		/// @DnDParent : 33141E4F
		/// @DnDArgument : "x" "obj_playership.x"
		/// @DnDArgument : "y" "obj_playership.y"
		direction = point_direction(x, y, obj_playership.x, obj_playership.y);
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 502A127A
		/// @DnDParent : 33141E4F
		/// @DnDArgument : "speed" "1"
		speed = 1;
	
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 0A3E8691
		/// @DnDParent : 33141E4F
		/// @DnDArgument : "speed" "obj_roomManager.lvl_vspeed_actual + vspeed"
		/// @DnDArgument : "type" "2"
		vspeed = obj_roomManager.lvl_vspeed_actual + vspeed;
	}

	/// @DnDAction : YoYo Games.Common.Else
	/// @DnDVersion : 1
	/// @DnDHash : 166770A5
	/// @DnDParent : 2BD35903
	else
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 4EE65AD4
		/// @DnDParent : 166770A5
		/// @DnDArgument : "speed" "obj_roomManager.lvl_vspeed_actual"
		/// @DnDArgument : "type" "2"
		vspeed = obj_roomManager.lvl_vspeed_actual;
	}
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 3E971CA8
else
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 0BCDFF10
	/// @DnDParent : 3E971CA8
	/// @DnDArgument : "speed" "obj_roomManager.lvl_vspeed_actual"
	/// @DnDArgument : "type" "2"
	vspeed = obj_roomManager.lvl_vspeed_actual;
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 275C73E6
/// @DnDArgument : "speed" "hspeed*obj_roomManager.time_scale"
/// @DnDArgument : "type" "1"
hspeed = hspeed*obj_roomManager.time_scale;

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 21F21F2D
/// @DnDArgument : "speed" "vspeed*obj_roomManager.time_scale"
/// @DnDArgument : "type" "2"
vspeed = vspeed*obj_roomManager.time_scale;