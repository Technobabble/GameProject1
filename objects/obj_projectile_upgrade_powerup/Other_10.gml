/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 391F3329
/// @DnDArgument : "expr" "powerup_weapon"
/// @DnDArgument : "var" "obj_playership.current_projectile"
obj_playership.current_projectile = powerup_weapon;

/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4A9DD3DC
/// @DnDApplyTo : a68b5698-7431-41e2-8980-17f9768a53c1
/// @DnDArgument : "expr" "1"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "weapon_upgrade_level"
with(obj_playership) {
weapon_upgrade_level += 1;

}

/// @DnDAction : YoYo Games.Instances.Set_Sprite
/// @DnDVersion : 1
/// @DnDHash : 3F7F7A69
/// @DnDDisabled : 1
/// @DnDApplyTo : a68b5698-7431-41e2-8980-17f9768a53c1
/// @DnDArgument : "spriteind" "spr_playership_upg1"
/// @DnDSaveInfo : "spriteind" "85396e60-2375-43da-bf0d-a8d6e2d2eac4"