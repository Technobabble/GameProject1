/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 2F204701
/// @DnDArgument : "var" "other.current_damage_tick_cooldown"
/// @DnDArgument : "op" "3"
if(other.current_damage_tick_cooldown <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 5CA5CE16
	/// @DnDApplyTo : other
	/// @DnDParent : 2F204701
	/// @DnDArgument : "expr" "damage_tick_cooldown"
	/// @DnDArgument : "var" "current_damage_tick_cooldown"
	with(other) {
	current_damage_tick_cooldown = damage_tick_cooldown;
	
	}

	/// @DnDAction : YoYo Games.Instance Variables.Set_Health
	/// @DnDVersion : 1
	/// @DnDHash : 0C37C859
	/// @DnDParent : 2F204701
	/// @DnDArgument : "health" "-other.damage"
	/// @DnDArgument : "health_relative" "1"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	__dnd_health += real(-other.damage);

	/// @DnDAction : YoYo Games.Instances.Color_Sprite
	/// @DnDVersion : 1
	/// @DnDHash : 2BBDCA97
	/// @DnDParent : 2F204701
	/// @DnDArgument : "colour" "$FF0000FF"
	image_blend = $FF0000FF & $ffffff;
	image_alpha = ($FF0000FF >> 24) / $ff;

	/// @DnDAction : YoYo Games.Instances.Set_Alarm
	/// @DnDVersion : 1
	/// @DnDHash : 7EF39255
	/// @DnDParent : 2F204701
	/// @DnDArgument : "steps" "room_speed*0.0667"
	alarm_set(0, room_speed*0.0667);

	/// @DnDAction : YoYo Games.Instance Variables.If_Health
	/// @DnDVersion : 1
	/// @DnDHash : 4533480A
	/// @DnDParent : 2F204701
	/// @DnDArgument : "op" "3"
	if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
	if(__dnd_health <= 0)
	{
		/// @DnDAction : YoYo Games.Common.Execute_Code
		/// @DnDVersion : 1
		/// @DnDHash : 6D0F6015
		/// @DnDParent : 4533480A
		/// @DnDArgument : "code" "with(obj_playerController)$(13_10){$(13_10)	show_debug_message("Target popped");$(13_10)	show_debug_message(score);	$(13_10)	show_debug_message(other.score_value);$(13_10)	score+=other.score_value;$(13_10)	show_debug_message(score);$(13_10)}"
		with(obj_playerController)
		{
			show_debug_message("Target popped");
			show_debug_message(score);	
			show_debug_message(other.score_value);
			score+=other.score_value;
			show_debug_message(score);
		}
	
		/// @DnDAction : YoYo Games.Instance Variables.Set_Score
		/// @DnDVersion : 1
		/// @DnDHash : 1BFD9682
		/// @DnDApplyTo : ba3094c2-6f8c-48f1-9e9d-04f69cb26dc0
		/// @DnDParent : 4533480A
		/// @DnDArgument : "score" "score"
		with(obj_playerController) {
		
		__dnd_score = real(score);
		}
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 7182B1C4
		/// @DnDParent : 4533480A
		instance_destroy();
	}
}