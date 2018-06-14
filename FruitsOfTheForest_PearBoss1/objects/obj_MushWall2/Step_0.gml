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
	
if ((global.up3 == true) && (global.up4 == true))
{
	instance_destroy();
}

if (global.up3 == true)
{
	sprite_index = spr_MushWall2;
}

if (global.up4 == true)
{
	sprite_index = spr_MushWall2;
}

if (global.up3 == false && global.up4 == false)
{
	sprite_index = spr_MushWall;
}