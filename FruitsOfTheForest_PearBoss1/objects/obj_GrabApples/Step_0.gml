if ((place_meeting(obj_GrabApplePlatfom.x, obj_GrabApplePlatfom.y, obj_PhysicsPlayer)))
{
	if(instance_exists(obj_GrabAppleToolTip))
	{
		show_debug_message("player 1 is here");
		obj_GrabAppleToolTip.visible = true;
	}
	
	if (gamepad_button_check(0, gp_face2) && (global.player1Holding == true))
	{
		
		if (blenderTimer >= 20)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApplePlatfom.phy_position_x + ((obj_GrabApplePlatfom2.x - obj_GrabApples.phy_position_x)/3));
				obj_Blender.phy_position_y = (obj_GrabApplePlatfom.phy_position_y - ((obj_GrabApplePlatfom2.y - obj_GrabApples.phy_position_y)/3));
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer >= 10 && blenderTimer < 20)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApplePlatfom.phy_position_x + ((obj_GrabApplePlatfom2.x - obj_GrabApples.phy_position_x)/2));
				obj_Blender.phy_position_y = (obj_GrabApplePlatfom.phy_position_y - ((obj_GrabApplePlatfom.y - obj_GrabApples.phy_position_y)/2));
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer >= 0 && blenderTimer < 10)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApples.phy_position_x);
				obj_Blender.phy_position_y = (obj_GrabApples.phy_position_y);
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer <= 0)
		{
			with (obj_PhysicsPlayer)
				obj_PhysicsPlayer.phy_position_x = obj_GrabApplePlatfom2.phy_position_x;
				obj_PhysicsPlayer.phy_position_y = obj_GrabApplePlatfom2.phy_position_y;	
				
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_PhysicsPlayer.phy_position_x);
				obj_Blender.phy_position_y = (obj_PhysicsPlayer.phy_position_y);	
				
			blenderTimer = 30; 
			
			//global.player1Holding = false;
		}
	}
}

if ((place_meeting(obj_GrabApplePlatfom.x, obj_GrabApplePlatfom.y, obj_Player2)))
{
	
	if (gamepad_button_check(1, gp_face2) && (global.player2Holding == true))
	{
		
		if (blenderTimer >= 20)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApplePlatfom.phy_position_x + ((obj_GrabApplePlatfom2.x - obj_GrabApples.phy_position_x)/3));
				obj_Blender.phy_position_y = (obj_GrabApplePlatfom.phy_position_y - ((obj_GrabApplePlatfom2.y - obj_GrabApples.phy_position_y)/3));
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer >= 10 && blenderTimer < 20)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApplePlatfom.phy_position_x + ((obj_GrabApplePlatfom2.x - obj_GrabApples.phy_position_x)/2));
				obj_Blender.phy_position_y = (obj_GrabApplePlatfom.phy_position_y - ((obj_GrabApplePlatfom.y - obj_GrabApples.phy_position_y)/2));
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer >= 0 && blenderTimer < 10)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApples.phy_position_x);
				obj_Blender.phy_position_y = (obj_GrabApples.phy_position_y);
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer <= 0)
		{
			with (obj_Player2)
				obj_Player2.phy_position_x = obj_GrabApplePlatfom2.phy_position_x;
				obj_Player2.phy_position_y = obj_GrabApplePlatfom2.phy_position_y;	
				
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
