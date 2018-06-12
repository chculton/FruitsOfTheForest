if ((obj_PhysicsPlayer.x > obj_GrabApplePlatfom5.x - 64) && (obj_PhysicsPlayer.x < obj_GrabApplePlatfom5.x + 64))
{
	if (gamepad_button_check(0, gp_face2) && (global.player1Holding == true))
	{
		global.GrabApples1 = true;
		if (blenderTimer >= 20)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApplePlatfom5.phy_position_x + ((obj_GrabApplePlatfom6.x - obj_GrabApples4.phy_position_x)/3));
				obj_Blender.phy_position_y = (obj_GrabApplePlatfom5.phy_position_y - ((obj_GrabApplePlatfom6.y - obj_GrabApples4.phy_position_y)/3));
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer >= 10 && blenderTimer < 20)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApplePlatfom5.phy_position_x + ((obj_GrabApplePlatfom6.x - obj_GrabApples4.phy_position_x)/2));
				obj_Blender.phy_position_y = (obj_GrabApplePlatfom5.phy_position_y - ((obj_GrabApplePlatfom5.y - obj_GrabApples4.phy_position_y)/2));
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer >= 0 && blenderTimer < 10)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApples4.phy_position_x);
				obj_Blender.phy_position_y = (obj_GrabApples4.phy_position_y);
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer <= 0)
		{
			with (obj_PhysicsPlayer)
				obj_PhysicsPlayer.phy_position_x = obj_GrabApplePlatfom6.phy_position_x;
				obj_PhysicsPlayer.phy_position_y = obj_GrabApplePlatfom6.phy_position_y;	
				
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_PhysicsPlayer.phy_position_x);
				obj_Blender.phy_position_y = (obj_PhysicsPlayer.phy_position_y);	
				
			blenderTimer = 30; 
			global.GrabApples1 = false;
		}
	}
}

if ((obj_Player2.x > obj_GrabApplePlatfom5.x - 64) && (obj_Player2.x < obj_GrabApplePlatfom5.x + 64))
{
	if (gamepad_button_check(1, gp_face2) && (global.player2Holding == true))
	{
		global.GrabApples2 = true;
		if (blenderTimer >= 20)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApplePlatfom5.phy_position_x + ((obj_GrabApplePlatfom6.x - obj_GrabApples4.phy_position_x)/3));
				obj_Blender.phy_position_y = (obj_GrabApplePlatfom5.phy_position_y - ((obj_GrabApplePlatfom6.y - obj_GrabApples4.phy_position_y)/3));
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer >= 10 && blenderTimer < 20)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApplePlatfom5.phy_position_x + ((obj_GrabApplePlatfom6.x - obj_GrabApples4.phy_position_x)/2));
				obj_Blender.phy_position_y = (obj_GrabApplePlatfom5.phy_position_y - ((obj_GrabApplePlatfom5.y - obj_GrabApples4.phy_position_y)/2));
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer >= 0 && blenderTimer < 10)
		{
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_GrabApples4.phy_position_x);
				obj_Blender.phy_position_y = (obj_GrabApples4.phy_position_y);
			
			blenderTimer--; 
		
		}
		
		if (blenderTimer <= 0)
		{
			with (obj_Player2)
				obj_Player2.phy_position_x = obj_GrabApplePlatfom6.phy_position_x;
				obj_Player2.phy_position_y = obj_GrabApplePlatfom6.phy_position_y;	
				
			with (obj_Blender)
				
				obj_Blender.phy_position_x = (obj_Player2.phy_position_x);
				obj_Blender.phy_position_y = (obj_Player2.phy_position_y);	
				
			blenderTimer = 30; 
			global.GrabApples2 = false;
		}
	}
}
