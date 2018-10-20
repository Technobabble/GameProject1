/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 67E2C31F
/// @DnDApplyTo : other
with(other) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Health
/// @DnDVersion : 1
/// @DnDHash : 72230C4F
/// @DnDArgument : "health" "-other.damage"
/// @DnDArgument : "health_relative" "1"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
__dnd_health += real(-other.damage);

/// @DnDAction : YoYo Games.Instances.Color_Sprite
/// @DnDVersion : 1
/// @DnDHash : 4369E857
/// @DnDArgument : "colour" "$FF0000FF"
image_blend = $FF0000FF & $ffffff;
image_alpha = ($FF0000FF >> 24) / $ff;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 4BECEE5B
/// @DnDArgument : "steps" "room_speed*0.1"
alarm_set(0, room_speed*0.1);

/// @DnDAction : YoYo Games.Instance Variables.If_Health
/// @DnDVersion : 1
/// @DnDHash : 668D4873
/// @DnDArgument : "op" "3"
if(!variable_instance_exists(id, "__dnd_health")) __dnd_health = 0;
if(__dnd_health <= 0)
{
	/// @DnDAction : YoYo Games.Common.Execute_Code
	/// @DnDVersion : 1
	/// @DnDHash : 656E33D2
	/// @DnDParent : 668D4873
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
	/// @DnDHash : 0A900216
	/// @DnDApplyTo : ba3094c2-6f8c-48f1-9e9d-04f69cb26dc0
	/// @DnDParent : 668D4873
	/// @DnDArgument : "score" "score"
	with(obj_playerController) {
	
	__dnd_score = real(score);
	}

	/// @DnDAction : YoYo Games.Instances.Destroy_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 479786EE
	/// @DnDParent : 668D4873
	instance_destroy();
}