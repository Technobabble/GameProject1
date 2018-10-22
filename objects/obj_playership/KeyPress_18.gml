/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 02318199
/// @DnDArgument : "code" "weapon_upgrade_level = clamp(weapon_upgrade_level,0,num_weapon_levels-1);$(13_10)current_projectile = weapons[weapon_upgrade_level];$(13_10)initial_projectile_angle_offset = (per_projectile_offset* (num_projectiles-1))/2;$(13_10)for(i = 0; i < num_projectiles; i++)$(13_10){$(13_10)	new_projectile = instance_create_layer(x, y, "Projectiles", current_projectile);$(13_10)	projectile_dir = 90 - initial_projectile_angle_offset + (i * per_projectile_offset);$(13_10)	show_debug_message("Pre spawn: " + string(direction));$(13_10)with (new_projectile)$(13_10){$(13_10)	transform_parent = other;$(13_10)	direction = other.projectile_dir;$(13_10)	show_debug_message("Projectile spawned heading: " + string(direction));$(13_10)}$(13_10)}$(13_10)"
weapon_upgrade_level = clamp(weapon_upgrade_level,0,num_weapon_levels-1);
current_projectile = weapons[weapon_upgrade_level];
initial_projectile_angle_offset = (per_projectile_offset* (num_projectiles-1))/2;
for(i = 0; i < num_projectiles; i++)
{
	new_projectile = instance_create_layer(x, y, "Projectiles", current_projectile);
	projectile_dir = 90 - initial_projectile_angle_offset + (i * per_projectile_offset);
	show_debug_message("Pre spawn: " + string(direction));
with (new_projectile)
{
	transform_parent = other;
	direction = other.projectile_dir;
	show_debug_message("Projectile spawned heading: " + string(direction));
}
}

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1
/// @DnDHash : 0FC985E3
/// @DnDArgument : "soundid" "snd_player_bullet1"
/// @DnDSaveInfo : "soundid" "8a4e3fad-992d-4db5-a4a7-dbb95358b206"
audio_play_sound(snd_player_bullet1, 0, 0);