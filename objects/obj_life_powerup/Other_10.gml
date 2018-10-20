/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 2372538E
/// @DnDApplyTo : ba3094c2-6f8c-48f1-9e9d-04f69cb26dc0
/// @DnDArgument : "lives" "1"
/// @DnDArgument : "lives_relative" "1"
with(obj_playerController) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(1);
}