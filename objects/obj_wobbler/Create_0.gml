/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 16E61548
/// @DnDArgument : "var" "entered_play_area"
entered_play_area = 0;

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 2D52BDC3
/// @DnDArgument : "health" "20"

__dnd_health = real(20);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 66F9BA65
/// @DnDDisabled : 1
/// @DnDArgument : "steps" "room_speed * 5"
/// @DnDArgument : "alarm" "1"


/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6E599EBD
/// @DnDArgument : "code" "wobble_phase_scale = 200;//Pixels/Rotation$(13_10)wobble_phase_pos = 0;$(13_10)wobble_max_range = 800;$(13_10)wobble_optimal_range = 100;$(13_10)wobble_scale_base = 1;//Max dist angle offset limit$(13_10)wobble_angle = 0;$(13_10)target_angle = 0;$(13_10)target_distance = 0;$(13_10)local_speed = 4;$(13_10)wobble_angle_offset = 0;$(13_10)wobble_scale = 1;$(13_10)wobble_angle_limit = 80; //current distance angle offset limit$(13_10)wobble_cycles_second = 1;//cycle/sec$(13_10)wobble_angle_speed = 0;$(13_10)wobble_dir = -1;"
wobble_phase_scale = 200;//Pixels/Rotation
wobble_phase_pos = 0;
wobble_max_range = 800;
wobble_optimal_range = 100;
wobble_scale_base = 1;//Max dist angle offset limit
wobble_angle = 0;
target_angle = 0;
target_distance = 0;
local_speed = 4;
wobble_angle_offset = 0;
wobble_scale = 1;
wobble_angle_limit = 80; //current distance angle offset limit
wobble_cycles_second = 1;//cycle/sec
wobble_angle_speed = 0;
wobble_dir = -1;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 3444DF29
/// @DnDArgument : "steps" "room_speed/4"
/// @DnDArgument : "alarm" "2"
alarm_set(2, room_speed/4);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2BCD00DA
/// @DnDArgument : "objectid" "obj_debug_marker"
/// @DnDSaveInfo : "objectid" "0903a0cd-1a6c-4d32-b0be-801019f70ad2"
instance_create_layer(0, 0, "Instances", obj_debug_marker);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 59C8666A
/// @DnDArgument : "objectid" "obj_debug_marker2"
/// @DnDSaveInfo : "objectid" "09a8da97-89b3-4368-9235-8d84807489bb"
instance_create_layer(0, 0, "Instances", obj_debug_marker2);

/// @DnDAction : YoYo Games.Miscellaneous.Debug_Show_Message
/// @DnDVersion : 1
/// @DnDHash : 4503823D
/// @DnDArgument : "msg" ""Initial Direction Angle: " +string(direction)"
show_debug_message(string("Initial Direction Angle: " +string(direction)));

/// @DnDAction : YoYo Games.Instances.Sprite_Rotate
/// @DnDVersion : 1
/// @DnDHash : 643FA3C5
image_angle = 0;