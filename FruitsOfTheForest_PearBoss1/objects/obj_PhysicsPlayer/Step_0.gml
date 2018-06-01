phy_rotation = 0;
phy_fixed_rotation = true;

if (gamepad_button_check_pressed(0, gp_face1))
{
	jump = true;
	sprite_index = spr_Player1Jump;
	//image_index = 1;
}
if (gamepad_axis_value(0, gp_axislh))
{
	right = true;	
	sprite_index = spr_Player1RightRunning;
	//image_index = 1;
}
if (gamepad_axis_value(0, gp_axislh) <= -0.3)
{
	left = true;
	sprite_index = spr_Player1LeftIdle;
	//image_index = 1;
}


if (right == true && (jumping = false))
{
	phy_position_x += spd;
	//sprite_index = spr_Player1Right;
}

if (left == true && (jumping = false))
{
	phy_position_x -= spd;
	//sprite_index = spr_Player1Left;
}

if (left == true && (jumping = true))
{
	phy_position_x -= spd * 0.8;
	//sprite_index = spr_Player1Left;
}

if (right == true && (jumping = true))
{
	phy_position_x += spd * 0.8;
	//sprite_index = spr_Player1Right;
}

//if (gamepad_button_check_pressed(0, gp_shoulderrb))
//{
//	notHolding = false;
//}

//if (!gamepad_button_check_pressed(0, gp_shoulderrb))
//{
//	notHolding = true;
//}

if (jump == true && (jump_cooldown < 1))
{
	physics_apply_impulse(x, y, 0, -jmp);
	if (gamepad_button_check(0, gp_shoulderrb))
	{
		jump_cooldown += jump_cooldown + 1;
	}
	jump_cooldown += jump_cooldown + 1;
	jumping = true;
}

/*if (place_meeting(x, y + 7, obj_Platform))
{
	jumping = false;
}*/

if ((place_meeting(x, y + 7, obj_Platform)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}

if ((place_meeting(x, y + 7, obj_LargePlatform)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}

if ((place_meeting(x, y + 7, obj_TopSide)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}

if ((place_meeting(x, y + 7, obj_TopSide2)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}

if ((place_meeting(x, y + 7, obj_TopSide3)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}

if ((place_meeting(x, y + 7, obj_TopSide4)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}

if (Player1Health <= 0)
{
	instance_destroy();
}

if (right == false && left == false && jump == false)
{
	sprite_index = spr_Player1RightIdle;
	image_index = 1;
}

if (instance_exists(obj_PlayerCamera))
{
	if (obj_Player2.x - obj_PlayerCamera.x >= EndOfScreen + 300)
	{
		physics_apply_impulse(x, y , -500, 0);
	}
}
ViewPort = room_get_viewport(rm_Level1, 0);
EndOfScreen = ViewPort[1] + 1920;


if (obj_PhysicsPlayer.x - obj_Player2.x > 1800)
{
	physics_apply_impulse(x, y , -500, 0);
}

//if (obj_PhysicsPlayer.x + obj_PlayerCamera <= 1300)
//{
	//physics_apply_impulse(x, y , -500, 0)
//}



jump = false;
left = false;
right = false;