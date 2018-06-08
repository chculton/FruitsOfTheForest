phy_position_x = phy_position_x + 10;
if (start = true)
{
	start = false;
	start2 = true;
	start3 = true;
	timer = 47;
	Created = false;
}

if (timer <= 0)
{
	sprite_index = spr_DragonFruitAttack;
	if(start2 = true)
	{
		//attackTimer = 30;
		start2 = false;
	}	
	attacking = true;
	//attackTimer--;
}

//if (attackTimer == 0)
//{
	if (attacking == true)
	{

		instance_create_layer(x + 250, y - 40, "PlayerLayer", obj_Beam);
	
		if(start3 = true)
		{
			finishTimer = 20;
			start3 = false;
		}	
		finishing = true;
		finishTimer--
	}
//}

if (finishTimer <= 0 && finishing == true)
{
	//sprite_index = spr_DragonFruit;
	//image_index = 0;
	attacking = false;
	finishing = false;
	start = true;
}

timer--;
	
	