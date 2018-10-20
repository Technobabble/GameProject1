/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 124F10DC
/// @DnDArgument : "colour" "$FF0000FF"
image_blend = $FF0000FF & $ffffff;
image_alpha = ($FF0000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 7AC6F2DD
/// @DnDArgument : "steps" "room_speed * 0.1"
/// @DnDArgument : "alarm" "1"
alarm_set(1, room_speed * 0.1);

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 63ACA708
/// @DnDApplyTo : ba3094c2-6f8c-48f1-9e9d-04f69cb26dc0
/// @DnDArgument : "health" "-5"
/// @DnDArgument : "health_relative" "1"
with(obj_playerController) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-5);
}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 4EDD0256
/// @DnDApplyTo : other
with(other) instance_destroy();