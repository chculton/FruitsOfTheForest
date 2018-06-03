/*obj_Blender.x = mouse_x;
obj_Blender.y = mouse_y;*/
if (HeldByPlayer1 == true)
{
	if (HoldingDelores == true && (!gamepad_button_check(0, gp_face2)))
	{
		phy_position_x = obj_PhysicsPlayer.x;
		phy_position_y = obj_PhysicsPlayer.y - 120;
		HasBeenThrown = false;
	
		/*if ((gamepad_axis_value(0, gp_axisrh) != 0) || (gamepad_axis_value (0, gp_axisrv) != 0))
		{*/
			//image_angle = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), -gamepad_axis_value(0, gp_axisrv));
			projectile_direction = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), gamepad_axis_value(0, gp_axisrv));
		//}
	
			xvec = lengthdir_x(spd,projectile_direction);
			yvec = lengthdir_y(spd,projectile_direction);
	} 

	if (!gamepad_button_check(0, gp_shoulderrb) && (HasBeenThrown == false)) //&& (isReleased == false))
	{

			//if ((gamepad_axis_value(0, gp_axisrh) != 0) || (gamepad_axis_value (0, gp_axisrv) != 0))
			//{
			//	image_angle = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), -gamepad_axis_value(0, gp_axisrv));
			//	projectile_direction = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), gamepad_axis_value(0, gp_axisrv));
			//}
		
			/*xvec = lengthdir_x(spd,projectile_direction);
			yvec = lengthdir_y(spd,projectile_direction);*/
			physics_apply_impulse(phy_position_x, phy_position_y, xvec * 1000, yvec * 1000);
			//phy_position_x += 100;
			//phy_position_y += -100;
			HasBeenThrown = true;
				
		//}
		//speed = point_distance(0 ,0, haxis, vaxis) * 5;
		HoldingDelores = false;
		HeldByPlayer1 = false;
	
	}

	

	firstRope.phy_position_x = mouse_x;
	firstRope.phy_position_y = mouse_y;
}

if (HeldByPlayer2 == true)
{
	if(HoldingDelores == true && (!gamepad_button_check(0, gp_face2)))
	{
		phy_position_x = obj_Player2.x;
		phy_position_y = obj_Player2.y - 120;
		HasBeenThrown = false;
	
		/*if ((gamepad_axis_value(0, gp_axisrh) != 0) || (gamepad_axis_value (0, gp_axisrv) != 0))
		{*/
			//image_angle = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), -gamepad_axis_value(0, gp_axisrv));
			projectile_direction = point_direction(0, 0, gamepad_axis_value(1, gp_axisrh), gamepad_axis_value(1, gp_axisrv));
		//}
	
			xvec = lengthdir_x(spd,projectile_direction);
			yvec = lengthdir_y(spd,projectile_direction);
	} 

	if (!gamepad_button_check(1, gp_shoulderrb) && (HasBeenThrown == false)) //&& (isReleased == false))
	{

			//if ((gamepad_axis_value(0, gp_axisrh) != 0) || (gamepad_axis_value (0, gp_axisrv) != 0))
			//{
			//	image_angle = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), -gamepad_axis_value(0, gp_axisrv));
			//	projectile_direction = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), gamepad_axis_value(0, gp_axisrv));
			//}
		
			/*xvec = lengthdir_x(spd,projectile_direction);
			yvec = lengthdir_y(spd,projectile_direction);*/
		physics_apply_impulse(phy_position_x, phy_position_y, xvec * 1000, yvec * 1000);
			//phy_position_x += 100;
			//phy_position_y += -100;
		HasBeenThrown = true;
				
		//}
		//speed = point_distance(0 ,0, haxis, vaxis) * 5;
		HoldingDelores = false;
		
		HeldByPlayer2 = false;
	
	}

	

	firstRope.phy_position_x = mouse_x;
	firstRope.phy_position_y = mouse_y;
}
























	//if(isReleased == true)
	//{
		//haxis = gamepad_axis_value(0, gp_axisrh);
		//vaxis = gamepad_axis_value(0, gp_axisrv);
		//projectile_direction = point_direction(x, y, haxis, vaxis);
		//physics_apply_impulse(0, 0, haxis, vaxis);


/*if (keyboard_check(right) && (jumping = true))
{
	phy_position_x += spd * 0.8;
}



if (keyboard_check_pressed(jump) && (jump_cooldown < 1))
{
	physics_apply_impulse(x, y, 0, -jmp);
	jump_cooldown++;
	jumping = true;
}

/*if (place_meeting(x, y + 7, obj_Platform))
{
	jumping = false;
}

if ((place_meeting(x, y + 7, obj_Platform)) && (jump_cooldown > 0))
{
	jump_cooldown--;
}*/