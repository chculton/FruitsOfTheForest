/*obj_Blender.x = mouse_x;
obj_Blender.y = mouse_y;*/
if ((!gamepad_button_check_pressed(0, gp_shoulderrb) && (!gamepad_button_check_pressed(1, gp_shoulderrb))))
	{
		if (place_meeting(x, y, obj_Dirt))
		{
			if (recentlyHeld == 1)
			{
				phy_position_x = obj_PhysicsPlayer.x;
				phy_position_y = obj_PhysicsPlayer.y;
			}
			if (recentlyHeld == 2)
			{
				phy_position_x = obj_Player2.x;
				phy_position_y = obj_Player2.y;
			}
			
		}
	}

if (HeldByPlayer1 == true)
{
	recentlyHeld = 1;
	if (HoldingDelores == true && (!gamepad_button_check(0, gp_face2)))
	{

		phy_position_x = obj_PhysicsPlayer.x;
		phy_position_y = obj_PhysicsPlayer.y - 120;
		
		
		HasBeenThrown = false;
	
		/*if ((gamepad_axis_value(0, gp_axisrh) != 0) || (gamepad_axis_value (0, gp_axisrv) != 0))
		{*/
			//image_angle = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), -gamepad_axis_value(0, gp_axisrv));
			projectile_direction = point_direction(0, 0, gamepad_axis_value(0, gp_axislh), gamepad_axis_value(0, gp_axislv));
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
			audio_play_sound(sfx_BlenderThrow, 4, false);
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
	recentlyHeld = 2;
	if(HoldingDelores == true && (!gamepad_button_check(1, gp_face2)))
	{
		phy_position_x = obj_Player2.x;
		phy_position_y = obj_Player2.y - 120;
		HasBeenThrown = false;
	
		/*if ((gamepad_axis_value(0, gp_axisrh) != 0) || (gamepad_axis_value (0, gp_axisrv) != 0))
		{*/
			//image_angle = point_direction(0, 0, gamepad_axis_value(0, gp_axisrh), -gamepad_axis_value(0, gp_axisrv));
			projectile_direction = point_direction(0, 0, gamepad_axis_value(1, gp_axislh), gamepad_axis_value(1, gp_axislv));
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
		audio_play_sound(sfx_BlenderThrow, 4, false);
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

if ((obj_PhysicsPlayer.phy_position_y > 1080) && (obj_Player2.phy_position_y > 1080) && moved1 == false)
{
	phy_position_x = obj_PhysicsPlayer.x;
	phy_position_y = obj_PhysicsPlayer.y;
	moved1 = true;
}

if ((obj_PhysicsPlayer.phy_position_y > 2160) && (obj_Player2.phy_position_y > 2160) && moved2 == false)
{
	phy_position_x = obj_PhysicsPlayer.x;
	phy_position_y = obj_PhysicsPlayer.y;
	moved2 = true;
}

if ((obj_PhysicsPlayer.phy_position_y > 3240) && (obj_Player2.phy_position_y > 3240) && moved3 == false)
{
	phy_position_x = obj_PhysicsPlayer.x;
	phy_position_y = obj_PhysicsPlayer.y;
	moved3 = true;
}

















