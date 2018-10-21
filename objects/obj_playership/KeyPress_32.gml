/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 17B5E582
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos" "-10"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "current_projectile"
/// @DnDArgument : "layer" ""Projectiles""
instance_create_layer(x + 0, y + -10, "Projectiles", current_projectile);

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 0FC985E3
/// @DnDArgument : "soundid" "snd_player_bullet1"
/// @DnDSaveInfo : "soundid" "8a4e3fad-992d-4db5-a4a7-dbb95358b206"
audio_play_sound(snd_player_bullet1, 0, 0);