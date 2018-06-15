if (gamepad_button_check_pressed(0, gp_face1))
{
	audio_play_sound(sfx_PressA, 3, false);
	Atimer = 30;
	Apressed1 = true;
}

if ((gamepad_axis_value(0, gp_axislv)) && timer <= 0)
{
	down = 1;
	audio_play_sound(sfx_MenuMoveUpDown, 3, false);
	timer = 5;
}

if ((gamepad_axis_value(0, gp_axislv) <= -0.3) && timer <= 0) 
{
	up = 1;	
	audio_play_sound(sfx_MenuMoveUpDown, 3, false);
	timer = 5;
}

if (gamepad_button_check_pressed(1, gp_face1))
{
	audio_play_sound(sfx_PressA, 3, false);
	Atimer = 30;
	Apressed1 = true;
}

if ((gamepad_axis_value(1, gp_axislv)) && timer <= 0)
{
	down = 1;
	audio_play_sound(sfx_MenuMoveUpDown, 3, false);
	timer = 5;
}

if ((gamepad_axis_value(1, gp_axislv) <= -0.3) && timer <= 0) 
{
	up = 1;	
	audio_play_sound(sfx_MenuMoveUpDown, 3, false);
	timer = 5;
}

if (Apressed1 = true)
{
	Atimer--;
}

if (Atimer <= 0)
{
	Apressed = true;
}

menu_move = down - up;

menu_index += menu_move;
if (menu_index < 0) menu_index = buttons - 1;
if (menu_index > buttons -1) menu_index = 0;
last_selected = menu_index;

down = 0;
up = 0;
timer--;

if (Apressed == true)
{
	if menu_index = 0
	room_goto(global.level);

	if menu_index = 1
	room_goto(rm_MenuScreen);
}

if (menu_index == 0)
{
	obj_TryAgain.visible = true;
	ReturnToMenuLoseScreen.visible = false;
	
}

if (menu_index == 1)
{
	obj_TryAgain.visible = false;
	ReturnToMenuLoseScreen.visible = true;
}
