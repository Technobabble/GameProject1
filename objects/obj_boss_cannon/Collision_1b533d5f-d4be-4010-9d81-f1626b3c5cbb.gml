/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 262F7093
/// @DnDArgument : "health" "-5"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-5);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 13F1EF0F
/// @DnDArgument : "steps" "room_speed * 0.1"
alarm_set(0, room_speed * 0.1);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4A51B28D
/// @DnDArgument : "colour" "$FF0000FF"
image_blend = $FF0000FF & $ffffff;
image_alpha = ($FF0000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 676E8A2A
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 7EAA5FEA
	/// @DnDParent : 676E8A2A
	instance_destroy();
}