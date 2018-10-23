/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 287254AC
/// @DnDArgument : "code" "$(13_10)image_xscale = obj_boss2_core.image_xscale;$(13_10)image_yscale = obj_boss2_core.image_yscale;$(13_10)segment_xOffset = -(obj_boss2_core.sprite_width/2 + sprite_width/2)*image_xscale/2;$(13_10)segment_yOffset = -5*image_yscale;$(13_10)$(13_10)destroyed_sprite = spr_corrupted_boss_damaged_left;$(13_10)$(13_10)turret_positions[0] = [-9,131];$(13_10)turret_type[0] = obj_boss2_turret1L;$(13_10)turret_scale = 1;$(13_10)event_inherited();"

image_xscale = obj_boss2_core.image_xscale;
image_yscale = obj_boss2_core.image_yscale;
segment_xOffset = -(obj_boss2_core.sprite_width/2 + sprite_width/2)*image_xscale/2;
segment_yOffset = -5*image_yscale;

destroyed_sprite = spr_corrupted_boss_damaged_left;

turret_positions[0] = [-9,131];
turret_type[0] = obj_boss2_turret1L;
turret_scale = 1;
event_inherited();