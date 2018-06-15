if (gamepad_button_check_pressed(0, gp_face1))
{
	audio_play_sound(sfx_PressA, 3, false);
	Atimer = 30;
	Apressed1 = true;
}

if (gamepad_button_check_pressed(1, gp_face1))
{
	audio_play_sound(sfx_PressA, 3, false);
	Atimer = 30;
	Apressed1 = true;
}

if (Apressed1 = true)
{
	Atimer--;
}

if (Atimer <= 0)
{
	room_goto(rm_MenuScreen);
}

