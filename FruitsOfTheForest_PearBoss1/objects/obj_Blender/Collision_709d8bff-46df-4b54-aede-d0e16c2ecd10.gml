if ((gamepad_button_check_pressed(0, gp_shoulderrb)) && (HoldingDelores == false) )
{
	HoldingDelores = true;
	HeldByPlayer1 = true;
	global.player1Holding = true;
	//jump_cooldown = 1;
}

if (!gamepad_button_check_pressed(0, gp_shoulderrb))
{
	global.player1Holding = false;
}



/*else
{
	HoldingDelores = false;
}*/


/*if ((gamepad_button_check_pressed(0, gp_shoulderrb)) && (HoldingDelores == true))
{
	HoldingDolores = false;
}*/