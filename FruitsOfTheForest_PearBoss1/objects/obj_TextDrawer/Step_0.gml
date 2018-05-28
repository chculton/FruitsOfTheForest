if (gamepad_button_check_pressed(0, gp_face1))
{
	Apressed = true;
}
if ((gamepad_axis_value(0, gp_axislv)) && timer <= 0)
{
	down = 1;
	timer = 5;
}
if ((gamepad_axis_value(0, gp_axislv) <= -0.3) && timer <= 0) 
{
	up = 1;	
	timer = 5;
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
	room_goto(rm_BananaEnemy)

	if menu_index = 1
	room_goto(rm_GrapeEnemy)

	if menu_index = 2
	room_goto(rm_MangoEnemy)

	if menu_index = 3
	room_goto(rm_DurianEnemy)

	if menu_index = 4
	room_goto(rm_RaspberryEnemy)

	if menu_index = 5
	room_goto(rm_StarFruitEnemy)

	if menu_index = 6
	room_goto(rm_PearKingTest)
}