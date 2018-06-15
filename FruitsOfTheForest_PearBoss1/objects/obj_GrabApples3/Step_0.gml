if ((place_meeting(obj_GrabApplePlatfom3.x, obj_GrabApplePlatfom3.y + 10, obj_PhysicsPlayer)))
{
	
	if (gamepad_button_check(0, gp_face2) /*&& (global.player1Holding == true)*/)
	{
		show_debug_message("Tom is the best");
		
		if (blenderTimer >= 20)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApplePlatfom3.phy_position_x + ((obj_GrabApplePlatfom4.x - obj_GrabApples3.phy_position_x)/3));
				obj_Blender.phy_position_y = (obj_GrabApplePlatfom3.phy_position_y - ((obj_GrabApplePlatfom4.y - obj_GrabApples3.phy_position_y)/3));
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer >= 10 && blenderTimer < 20)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApplePlatfom3.phy_position_x + ((obj_GrabApplePlatfom4.x - obj_GrabApples3.phy_position_x)/2));
				obj_Blender.phy_position_y = (obj_GrabApplePlatfom3.phy_position_y - ((obj_GrabApplePlatfom3.y - obj_GrabApples3.phy_position_y)/2));
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer >= 0 && blenderTimer < 10)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApples3.phy_position_x);
				obj_Blender.phy_position_y = (obj_GrabApples3.phy_position_y);
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer <= 0)
		{
			with (obj_PhysicsPlayer)
				obj_PhysicsPlayer.phy_position_x = obj_GrabApplePlatfom4.phy_position_x;
				obj_PhysicsPlayer.phy_position_y = obj_GrabApplePlatfom4.phy_position_y;	
				
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_PhysicsPlayer.phy_position_x);
				obj_Blender.phy_position_y = (obj_PhysicsPlayer.phy_position_y);	
				
			blenderTimer = 30; 
			
			//global.player1Holding = false;
		}
	}
}

if ((place_meeting(obj_GrabApplePlatfom3.x, obj_GrabApplePlatfom3.y + 10, obj_Player2)))
{

	if (gamepad_button_check(1, gp_face2) /*&& (global.player2Holding == true)*/)
	{
		show_debug_message("hans isnt")
		
		if (blenderTimer >= 20)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApplePlatfom3.phy_position_x + ((obj_GrabApplePlatfom4.x - obj_GrabApples3.phy_position_x)/3));
				obj_Blender.phy_position_y = (obj_GrabApplePlatfom3.phy_position_y - ((obj_GrabApplePlatfom4.y - obj_GrabApples3.phy_position_y)/3));
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer >= 10 && blenderTimer < 20)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApplePlatfom3.phy_position_x + ((obj_GrabApplePlatfom4.x - obj_GrabApples3.phy_position_x)/2));
				obj_Blender.phy_position_y = (obj_GrabApplePlatfom3.phy_position_y - ((obj_GrabApplePlatfom3.y - obj_GrabApples3.phy_position_y)/2));
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer >= 0 && blenderTimer < 10)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApples3.phy_position_x);
				obj_Blender.phy_position_y = (obj_GrabApples3.phy_position_y);
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer <= 0)
		{
			with (obj_Player2)
				obj_Player2.phy_position_x = obj_GrabApplePlatfom4.phy_position_x;
				obj_Player2.phy_position_y = obj_GrabApplePlatfom4.phy_position_y;	
				
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_Player2.phy_position_x);
				obj_Blender.phy_position_y = (obj_Player2.phy_position_y);	
				
			blenderTimer = 30; 
			
			//global.player2Holding = false;
		}
	}
}

/*if ((obj_Player2.x < obj_GrabApplePlatfom.x - 200) || (obj_Player2.x > obj_GrabApplePlatfom.x + 200))
{*/
	/*if ((((obj_PhysicsPlayer.x < obj_GrabApplePlatfom.x - 200) || (obj_PhysicsPlayer.x > obj_GrabApplePlatfom.x + 200)) && ((obj_Player2.x < obj_GrabApplePlatfom.x - 200) || (obj_Player2.x > obj_GrabApplePlatfom.x + 200)) && instance_exists(objGrabAppleToolTip)))
	{
		instance_destroy(objGrabAppleToolTip);
	}	*/
//}
