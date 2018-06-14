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
	
if ((global.up1 == true) && (global.up2 == true))
{
	instance_destroy();
}

if (global.up1 == true)
{
	sprite_index = spr_MushWall2;
}

if (global.up2 == true)
{
	sprite_index = spr_MushWall2;
}

if (global.up1 == false && global.up2 == false)
{
	sprite_index = spr_MushWall;
}