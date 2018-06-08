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