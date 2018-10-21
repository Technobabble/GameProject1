/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 19290612
/// @DnDApplyTo : a68b5698-7431-41e2-8980-17f9768a53c1
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "var" "weapon_upgrade"
with(obj_playership) {
weapon_upgrade = 1;

}

/// @DnDAction : YoYo Games.Instances.Change_Instance
/// @DnDVersion : 1
/// @DnDHash : 3C31C78B
/// @DnDApplyTo : a68b5698-7431-41e2-8980-17f9768a53c1
/// @DnDArgument : "objind" "obj_playership_upg1"
/// @DnDSaveInfo : "objind" "c9c69197-1fe8-4537-b1ee-89932e589c2b"
with(obj_playership) instance_change(obj_playership_upg1, true);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 3FABC6C0
/// @DnDArgument : "soundid" "pickup_sound"
audio_play_sound(pickup_sound, 0, 0);

/// @DnDAction : YoYo Games.Instances.Call_User_Event
/// @DnDVersion : 1
/// @DnDHash : 47E78FD4
event_user(0);

/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 07B990C4
instance_destroy();