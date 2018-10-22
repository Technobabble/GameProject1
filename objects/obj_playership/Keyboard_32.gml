/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 64AF43FE
/// @DnDArgument : "var" "current_refire_wait"
/// @DnDArgument : "op" "3"
if(current_refire_wait <= 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 251F6F36
	/// @DnDParent : 64AF43FE
	/// @DnDArgument : "code" "weapon_upgrade_level = clamp(weapon_upgrade_level,0,num_weapon_levels-1);$(13_10)current_projectile = weapons[weapon_upgrade_level];$(13_10)for(i = 0; i < num_projectiles; i++)$(13_10){$(13_10)	new_projectile = instance_create_layer(x, y, "Projectiles", current_projectile);$(13_10)	per_projectile_offset = new_projectile.fireline_spacing;$(13_10)	fire_pattern = new_projectile.multishot_type;$(13_10)	if(!(fire_pattern == "Spread" || fire_pattern == "Oscillating"||fire_pattern == "Burst") || num_projectiles==1)$(13_10)	{$(13_10)		fire_pattern = "Spread";$(13_10)	}$(13_10)	if (fire_pattern == "Spread")$(13_10)	{$(13_10)		initial_projectile_angle_offset = (per_projectile_offset* (num_projectiles-1))/2;$(13_10)		projectile_dir = 90 - initial_projectile_angle_offset + (i * per_projectile_offset);$(13_10)		with (new_projectile)$(13_10)		{$(13_10)			transform_parent = other;$(13_10)			direction = other.projectile_dir;$(13_10)		}$(13_10)		break_firing_loop = false;$(13_10)	}$(13_10)	else if (fire_pattern == "Oscillating")$(13_10)	{$(13_10)		initial_projectile_angle_offset = (per_projectile_offset* (num_projectiles-1))/2;$(13_10)		projectile_dir = 90 - initial_projectile_angle_offset + (current_burst_pos * per_projectile_offset);$(13_10)		with (new_projectile)$(13_10)		{$(13_10)			transform_parent = other;$(13_10)			direction = other.projectile_dir;$(13_10)		}$(13_10)		current_burst_pos++;$(13_10)		if(current_burst_pos >= num_projectiles)$(13_10)		{$(13_10)			current_burst_pos = 0;$(13_10)		}$(13_10)		refire_scale_factor = 1/num_projectiles;$(13_10)		break;$(13_10)	}$(13_10)	else if (fire_pattern == "Burst")$(13_10)	{$(13_10)		initial_projectile_angle_offset = 0;$(13_10)		projectile_dir = 90 - initial_projectile_angle_offset;$(13_10)		with (new_projectile)$(13_10)		{$(13_10)			transform_parent = other;$(13_10)			direction = other.projectile_dir;$(13_10)		}		$(13_10)		current_burst_pos++;$(13_10)		if( current_burst_pos >= num_projectiles+1)$(13_10)		{$(13_10)			current_burst_pos = 0;$(13_10)			refire_scale_factor = 1;$(13_10)		}$(13_10)		else{			$(13_10)			refire_scale_factor = new_projectile.in_burst_spacing_scale;$(13_10)		}$(13_10)	break;$(13_10)	}$(13_10)	}$(13_10)	$(13_10)"
	weapon_upgrade_level = clamp(weapon_upgrade_level,0,num_weapon_levels-1);
	current_projectile = weapons[weapon_upgrade_level];
	for(i = 0; i < num_projectiles; i++)
	{
		new_projectile = instance_create_layer(x, y, "Projectiles", current_projectile);
		per_projectile_offset = new_projectile.fireline_spacing;
		fire_pattern = new_projectile.multishot_type;
		if(!(fire_pattern == "Spread" || fire_pattern == "Oscillating"||fire_pattern == "Burst") || num_projectiles==1)
		{
			fire_pattern = "Spread";
		}
		if (fire_pattern == "Spread")
		{
			initial_projectile_angle_offset = (per_projectile_offset* (num_projectiles-1))/2;
			projectile_dir = 90 - initial_projectile_angle_offset + (i * per_projectile_offset);
			with (new_projectile)
			{
				transform_parent = other;
				direction = other.projectile_dir;
			}
			break_firing_loop = false;
		}
		else if (fire_pattern == "Oscillating")
		{
			initial_projectile_angle_offset = (per_projectile_offset* (num_projectiles-1))/2;
			projectile_dir = 90 - initial_projectile_angle_offset + (current_burst_pos * per_projectile_offset);
			with (new_projectile)
			{
				transform_parent = other;
				direction = other.projectile_dir;
			}
			current_burst_pos++;
			if(current_burst_pos >= num_projectiles)
			{
				current_burst_pos = 0;
			}
			refire_scale_factor = 1/num_projectiles;
			break;
		}
		else if (fire_pattern == "Burst")
		{
			initial_projectile_angle_offset = 0;
			projectile_dir = 90 - initial_projectile_angle_offset;
			with (new_projectile)
			{
				transform_parent = other;
				direction = other.projectile_dir;
			}		
			current_burst_pos++;
			if( current_burst_pos >= num_projectiles+1)
			{
				current_burst_pos = 0;
				refire_scale_factor = 1;
			}
			else{			
				refire_scale_factor = new_projectile.in_burst_spacing_scale;
			}
		break;
		}
		}

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 71454C34
	/// @DnDParent : 64AF43FE
	/// @DnDArgument : "expr" "current_projectile.refire_delay*refire_scale_factor"
	/// @DnDArgument : "var" "current_refire_wait"
	current_refire_wait = current_projectile.refire_delay*refire_scale_factor;

	/// @DnDAction : YoYo Games.Audio.Play_Audio
	/// @DnDVersion : 1
	/// @DnDHash : 7BBFF2FB
	/// @DnDParent : 64AF43FE
	/// @DnDArgument : "soundid" "snd_player_bullet1"
	/// @DnDSaveInfo : "soundid" "8a4e3fad-992d-4db5-a4a7-dbb95358b206"
	audio_play_sound(snd_player_bullet1, 0, 0);
}