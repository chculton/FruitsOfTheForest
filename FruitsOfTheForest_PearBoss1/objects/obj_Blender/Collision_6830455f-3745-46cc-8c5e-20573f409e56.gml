if ((gamepad_button_check_pressed(1, gp_shoulderrb)) && (HoldingDelores == false))
{
	HoldingDelores = true;
	HeldByPlayer2 = true;
	global.player2Holding = true;
}


if (!gamepad_button_check_pressed(1, gp_shoulderrb))
{
	global.player2Holding = false;
}