/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 73253FA0
/// @DnDArgument : "code" "in_play_area = false$(13_10)if(x > 0 & x < room_width)$(13_10){$(13_10)	if(y > 0 & y < room_height)$(13_10)	{$(13_10)		in_play_area = true;$(13_10)	}$(13_10)}$(13_10)$(13_10)if(in_play_area){$(13_10)	new_projectile = instance_create_layer(x,y,"Projectiles", current_projectile);$(13_10)	target = instance_nearest(x,y,template_basic_target);$(13_10)	target_dir = point_direction(x,y,target.x,target.y); $(13_10)	with(new_projectile)$(13_10)	{$(13_10)		direction = other.target_dir;$(13_10)	}$(13_10)}"
in_play_area = false
if(x > 0 & x < room_width)
{
	if(y > 0 & y < room_height)
	{
		in_play_area = true;
	}
}

if(in_play_area){
	new_projectile = instance_create_layer(x,y,"Projectiles", current_projectile);
	target = instance_nearest(x,y,template_basic_target);
	target_dir = point_direction(x,y,target.x,target.y); 
	with(new_projectile)
	{
		direction = other.target_dir;
	}
}

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 48E24DF2
/// @DnDArgument : "steps" "room_speed/4"
alarm_set(0, room_speed/4);