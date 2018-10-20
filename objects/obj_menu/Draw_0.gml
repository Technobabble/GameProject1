/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 38F4958F
/// @DnDArgument : "code" "$(13_10)var i = 0;$(13_10)menu_y = (room_height/2) - (buttons*(button_h+ menu_y_spacing)/2);//Change menu Y offset to center menu$(13_10)for (i = 0; i < buttons; i++) {$(13_10)	$(13_10)	draw_set_font(font_main);$(13_10)	draw_set_halign(fa_left);$(13_10)	draw_set_color(c_ltgray);$(13_10)	$(13_10)	if (menu_index == i) draw_set_color(c_red);$(13_10)	$(13_10)	//Draw menu option at given x and y, offsetting by button height and spacing$(13_10)	//(subtracts menu_spacing * 1 to offset blank space above first menu item)$(13_10)	draw_text(menu_x, menu_y + (button_h + menu_y_spacing) * i - menu_y_spacing, button[i]);$(13_10)}$(13_10)"

var i = 0;
menu_y = (room_height/2) - (buttons*(button_h+ menu_y_spacing)/2);//Change menu Y offset to center menu
for (i = 0; i < buttons; i++) {
	
	draw_set_font(font_main);
	draw_set_halign(fa_left);
	draw_set_color(c_ltgray);
	
	if (menu_index == i) draw_set_color(c_red);
	
	//Draw menu option at given x and y, offsetting by button height and spacing
	//(subtracts menu_spacing * 1 to offset blank space above first menu item)
	draw_text(menu_x, menu_y + (button_h + menu_y_spacing) * i - menu_y_spacing, button[i]);
}