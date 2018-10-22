/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 6EE559F4
/// @DnDArgument : "code" "show_debug_message("Wave " + string(current_wave+1) + " spawned");$(13_10)switch (current_wave)$(13_10){$(13_10)	case 0://Wave 1$(13_10)	spawn_many_random(obj_asteroid1, 6);$(13_10)	spawn_many_random(obj_enemyship, 3);$(13_10)	break;$(13_10)	case 1:	$(13_10)	spawn_many_random(obj_enemyship, 4);	$(13_10)	spawn_many_random(obj_enemy_squad_controller1, 1);$(13_10)	break;$(13_10)	case 2:$(13_10)	instance_create_layer(room_width/2,200,"Danger", obj_boss_core);$(13_10)	instance_create_layer(room_width/2,200,"Danger", obj_boss_wingL);$(13_10)	instance_create_layer(room_width/2,200,"Danger", obj_boss_wingR);$(13_10)	$(13_10)	break;	$(13_10)}$(13_10)next_wave_delay = between_wave_delays[current_wave];$(13_10)current_wave++;"
show_debug_message("Wave " + string(current_wave+1) + " spawned");
switch (current_wave)
{
	case 0://Wave 1
	spawn_many_random(obj_asteroid1, 6);
	spawn_many_random(obj_enemyship, 3);
	break;
	case 1:	
	spawn_many_random(obj_enemyship, 4);	
	spawn_many_random(obj_enemy_squad_controller1, 1);
	break;
	case 2:
	instance_create_layer(room_width/2,200,"Danger", obj_boss_core);
	instance_create_layer(room_width/2,200,"Danger", obj_boss_wingL);
	instance_create_layer(room_width/2,200,"Danger", obj_boss_wingR);
	
	break;	
}
next_wave_delay = between_wave_delays[current_wave];
current_wave++;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 0F2559AF
/// @DnDArgument : "steps" "next_wave_delay*room_speed"
alarm_set(0, next_wave_delay*room_speed);