/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2FA3CF1C
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "-10"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_blast2"
/// @DnDSaveInfo : "objectid" "42cdd439-d3a0-41ac-86fe-cdaa599e7eb6"
instance_create_layer(x + 0, y + -10, "Instances", obj_blast2);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 2D2FDD62
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "-10"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_blast2_left"
/// @DnDSaveInfo : "objectid" "17521eec-9cd8-471f-87f3-9f1a4b9142ba"
instance_create_layer(x + 0, y + -10, "Instances", obj_blast2_left);

/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 0BD020C8
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "-10"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "obj_blast2_right"
/// @DnDArgument : "layer" ""Projectiles""
/// @DnDSaveInfo : "objectid" "73fa3d4f-7c10-445b-80ac-2eaa32693b83"
instance_create_layer(x + 0, y + -10, "Projectiles", obj_blast2_right);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 42B5646F
/// @DnDArgument : "soundid" "snd_player_bullet1"
/// @DnDSaveInfo : "soundid" "8a4e3fad-992d-4db5-a4a7-dbb95358b206"
audio_play_sound(snd_player_bullet1, 0, 0);