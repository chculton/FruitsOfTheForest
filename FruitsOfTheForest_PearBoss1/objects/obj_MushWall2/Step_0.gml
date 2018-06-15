//with (obj_MushButton)
//	if (completed or completed2)
//	{
//		up1 = true;
//	}

//with (obj_MushButton2)
//	if (completed or completed2)
//	{
//		up2 = true;
//	}
	
if ((global.up3 == true) && (global.up4 == true) && dead == false)
{
	if (dead = false)
	{
		image_index = spr_MushWallDestroying;
		deathTimer = 20;
		dead = true;
	}
}

if (global.up3 == true && dead == false)
{
	sprite_index = spr_MushWall2;
	
}

if (global.up4 == true && dead == false)
{
	sprite_index = spr_MushWall2;
}

if (global.up3 == false && global.up4 == false && dead == false)
{
	sprite_index = spr_MushWall;
}

if (image_index >= 6 && dead == false)
{
	image_index = 6;
}

if (dead == true)
{
	deathTimer--;
}

if (deathTimer <= 0)
{
	instance_destroy();
}