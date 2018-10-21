/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 270EFB28
/// @DnDArgument : "code" "units_remaining=0;$(13_10)child_units[numUnits]= 0;$(13_10)units_on_path = 0;"
units_remaining=0;
child_units[numUnits]= 0;
units_on_path = 0;

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 5FE9AE39
/// @DnDArgument : "steps" "room_speed*0.1"
/// @DnDArgument : "alarm" "11"
alarm_set(11, room_speed*0.1);