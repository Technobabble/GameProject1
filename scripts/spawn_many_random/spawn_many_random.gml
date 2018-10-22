/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 57AFE2BD
/// @DnDArgument : "code" "$(13_10)/// @function spawn_many_random(enemy_object, num_enemies)$(13_10)/// @description Spawns [num_enemies] instances of [enemy_object] at random positions above the screen$(13_10)/// @param {real} enemy_object The object for the enemy to be spawned$(13_10)/// @param {real} num_enemies The number of instances to spawn.$(13_10)//argument0 : enemy$(13_10)//argument1 : num$(13_10)$(13_10)for(i = 0; i < argument1; i++)$(13_10){$(13_10)new_enemy = instance_create_layer(0,0,"Danger", argument0);$(13_10)with(new_enemy){	$(13_10)	randomize();$(13_10)x = random_range(0 +sprite_width*image_xscale/2,  room_width -sprite_width*image_xscale/2);$(13_10)y = random_range(-1500,  -sprite_height*image_yscale/2);$(13_10)}$(13_10)$(13_10)}"

/// @function spawn_many_random(enemy_object, num_enemies)
/// @description Spawns [num_enemies] instances of [enemy_object] at random positions above the screen
/// @param {real} enemy_object The object for the enemy to be spawned
/// @param {real} num_enemies The number of instances to spawn.
//argument0 : enemy
//argument1 : num

for(i = 0; i < argument1; i++)
{
new_enemy = instance_create_layer(0,0,"Danger", argument0);
with(new_enemy){	
	randomize();
x = random_range(0 +sprite_width*image_xscale/2,  room_width -sprite_width*image_xscale/2);
y = random_range(-1500,  -sprite_height*image_yscale/2);
}

}