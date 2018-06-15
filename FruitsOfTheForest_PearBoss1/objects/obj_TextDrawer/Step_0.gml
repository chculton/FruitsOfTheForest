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
	room_goto(rm_Level1IntroScreen)

	if menu_index = 1
	room_goto(rm_Level2IntroScreen)

	if menu_index = 2
	room_goto(rm_Level3IntroScreen)
	
	if menu_index = 3
	{
		game_end();
	}

}

if (menu_index == 0)
{
	MenuText1.visible = true;
	MenuText2.visible = false;
	MenuText3.visible = false;
	MenuText4.visible = false;
}

if (menu_index == 1)
{
	MenuText1.visible = false;
	MenuText2.visible = true;
	MenuText3.visible = false;
	MenuText4.visible = false;
}

if (menu_index == 2)
{
	MenuText1.visible = false;
	MenuText2.visible = false;
	MenuText3.visible = true;
	MenuText4.visible = false;
}

if (menu_index == 3)
{
	MenuText1.visible = false;
	MenuText2.visible = false;
	MenuText3.visible = false;
	MenuText4.visible = true;
}