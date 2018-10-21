/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0F6190F3
/// @DnDArgument : "obj" "obj_boss_core"
/// @DnDSaveInfo : "obj" "a4332918-8045-4b66-88a1-f73c4f98249d"
var l0F6190F3_0 = false;
l0F6190F3_0 = instance_exists(obj_boss_core);
if(l0F6190F3_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 495A86DF
	/// @DnDParent : 0F6190F3
	/// @DnDArgument : "x" "obj_boss_core.x+segment_xOffset"
	/// @DnDArgument : "y" "obj_boss_core.y+segment_yOffset"
	x = obj_boss_core.x+segment_xOffset;
	y = obj_boss_core.y+segment_yOffset;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 2D0991D0
else
{
	/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
	/// @DnDVersion : 1
	/// @DnDHash : 24375152
	/// @DnDParent : 2D0991D0
	/// @DnDArgument : "msg" ""Error: No boss core detected""
	show_debug_message(string("Error: No boss core detected"));

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 16B8D757
	/// @DnDParent : 2D0991D0
	instance_destroy();
}

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 02A313EF
/// @DnDArgument : "var" "turrets_remaining"
/// @DnDArgument : "op" "3"
if(turrets_remaining <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4C67E2B3
	/// @DnDParent : 02A313EF
	instance_destroy();
}