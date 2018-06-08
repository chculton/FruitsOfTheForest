if (place_meeting(x, y - 10, obj_PhysicsPlayer))
{
	if (completed == false)
	{
		image_index = 0;
		sprite_index = spr_MushButtonPushing
		completed = true;
	}

	if ((timer <= 0) && (completed == true))
	{
		sprite_index = spr_MushButtonPushed;
		global.up3 = true;
	}
	
	timer--;
}

if (completed = true)
{
	if (obj_PhysicsPlayer.phy_position_x > (x + 150)) or (obj_PhysicsPlayer.phy_position_x < (x - 150))
	{
		completed = false;
		timer = 12;
		sprite_index = spr_MushButton;	
		global.up3 = false;
	}
}

if (place_meeting(x, y - 10, obj_Player2))
{
	if (completed2 == false)
	{
		image_index = 0;
		sprite_index = spr_MushButtonPushing
		completed2 = true;
		
	}

	if ((timer <= 0) && (completed2 == true))
	{
		sprite_index = spr_MushButtonPushed;
		global.up3 = true;
	}
	
	timer--;
}

if (completed2 = true)
{
	
	if (obj_Player2.phy_position_x > (x + 150)) or (obj_Player2.phy_position_x < (x - 150))
	{
		completed2 = false;
		timer = 12;
		sprite_index = spr_MushButton;	
		global.up3 = false;
	}
}