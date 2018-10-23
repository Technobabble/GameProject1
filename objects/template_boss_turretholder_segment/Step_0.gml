/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 0F6190F3
/// @DnDArgument : "obj" "template_boss_core_base"
/// @DnDSaveInfo : "obj" "c9ae24a4-ae96-4a5b-8391-4b11b4e89ce9"
var l0F6190F3_0 = false;
l0F6190F3_0 = instance_exists(template_boss_core_base);
if(l0F6190F3_0)
{
	/// @DnDAction : YoYo Games.Movement.Jump_To_Point
	/// @DnDVersion : 1
	/// @DnDHash : 495A86DF
	/// @DnDParent : 0F6190F3
	/// @DnDArgument : "x" "template_boss_core_base.x+segment_xOffset"
	/// @DnDArgument : "y" "template_boss_core_base.y+segment_yOffset"
	x = template_boss_core_base.x+segment_xOffset;
	y = template_boss_core_base.y+segment_yOffset;
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