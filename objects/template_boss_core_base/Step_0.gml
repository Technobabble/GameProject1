/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 4BC85600
/// @DnDArgument : "var" "segments_remaining"
/// @DnDArgument : "op" "3"
if(segments_remaining <= 0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 758C76C7
	/// @DnDParent : 4BC85600
	/// @DnDArgument : "var" "destroyed"
	/// @DnDArgument : "value" "false"
	if(destroyed == false)
	{
		/// @DnDAction : YoYo Games.Instances.Call_User_Event
		/// @DnDVersion : 1
		/// @DnDHash : 42E093C2
		/// @DnDParent : 758C76C7
		event_user(0);
	
		/// @DnDAction : YoYo Games.Common.Variable
		/// @DnDVersion : 1
		/// @DnDHash : 5C2B9548
		/// @DnDParent : 758C76C7
		/// @DnDArgument : "expr" "true"
		/// @DnDArgument : "var" "destroyed"
		destroyed = true;
	}
}

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