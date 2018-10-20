/// @DnDAction : YoYo Games.Common.If_Expression
/// @DnDVersion : 1
/// @DnDHash : 29784ED4
/// @DnDArgument : "expr" "x < 200 && hspeed < 0"
if(x < 200 && hspeed < 0)
{
	/// @DnDAction : YoYo Games.Movement.Set_Speed
	/// @DnDVersion : 1
	/// @DnDHash : 404D24BE
	/// @DnDParent : 29784ED4
	/// @DnDArgument : "speed" "local_speed"
	/// @DnDArgument : "type" "1"
	hspeed = local_speed;
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
	/// @DnDArgument : "expr" "x > (room_width-200) && hspeed > 0"
	if(x > (room_width-200) && hspeed > 0)
	{
		/// @DnDAction : YoYo Games.Movement.Set_Speed
		/// @DnDVersion : 1
		/// @DnDHash : 68801F99
		/// @DnDParent : 6C87FE13
		/// @DnDArgument : "speed" "-local_speed"
		/// @DnDArgument : "type" "1"
		hspeed = -local_speed;
	}
}