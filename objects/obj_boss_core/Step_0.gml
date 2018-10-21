/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 29784ED4
/// @DnDArgument : "expr" "x < 300 && hspeed < 0"
if(x < 300 && hspeed < 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 60517BF7
	/// @DnDParent : 29784ED4
	/// @DnDArgument : "var" "hdir"
	hdir = 0;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 287F263B
else
{
	/// @DnDAction : YoYo Games.Common.If_Expression
	/// @DnDVersion : 1
	/// @DnDHash : 6C87FE13
	/// @DnDParent : 287F263B
	/// @DnDArgument : "expr" "x > (room_width-300) && hspeed > 0"
	if(x > (room_width-300) && hspeed > 0)
	{
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 05D65623
		/// @DnDParent : 6C87FE13
		/// @DnDArgument : "expr" "-1"
		/// @DnDArgument : "var" "hdir"
		hdir = -1;
	}
}

/// @DnDAction : YoYo Games.Movement.Set_Speed
/// @DnDVersion : 1
/// @DnDHash : 404D24BE
/// @DnDArgument : "speed" "hdir* local_speed*obj_roomManager.time_scale"
/// @DnDArgument : "type" "1"
hspeed = hdir* local_speed*obj_roomManager.time_scale;