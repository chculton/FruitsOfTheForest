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
	
if ((global.up1 == true) && (global.up2 == true) && dead == false)
{
	if (dead = false)
	{
		image_index = spr_MushWallDestroying;
		image_index = 1;
		deathTimer = 6;
		dead = true;
	}
}

if (global.up1 == true && dead == false)
{
	sprite_index = spr_MushWall2;
	
}

if (global.up2 == true && dead == false)
{
	sprite_index = spr_MushWall2;
}

if (global.up1 == false && global.up2 == false && dead == false)
{
	sprite_index = spr_MushWall;
}

if (image_index >= 6 && dead == false)
{
	image_index = 6;
}

if (image_index >= 6 && dead == true)
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