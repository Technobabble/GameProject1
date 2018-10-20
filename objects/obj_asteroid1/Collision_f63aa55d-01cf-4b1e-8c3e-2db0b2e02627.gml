/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 1D2E243B
/// @DnDApplyTo : ba3094c2-6f8c-48f1-9e9d-04f69cb26dc0
/// @DnDArgument : "health" "-10"
/// @DnDArgument : "health_relative" "1"
with(obj_playerController) {
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-10);
}

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 65604E85
/// @DnDApplyTo : a68b5698-7431-41e2-8980-17f9768a53c1
/// @DnDArgument : "colour" "$FF0000FF"
with(obj_playership) {
image_blend = $FF0000FF & $ffffff;
image_alpha = ($FF0000FF >> 24) / $ff;
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4FA9B378
/// @DnDApplyTo : a68b5698-7431-41e2-8980-17f9768a53c1
/// @DnDArgument : "steps" "room_speed * 0.1"
/// @DnDArgument : "alarm" "1"
with(obj_playership) {
alarm_set(1, room_speed * 0.1);

}

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 76B9239B
instance_destroy();