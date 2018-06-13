if (place_meeting(x, y - 10, obj_PhysicsPlayer))
{
	if(!instance_exists(objGrabAppleToolTip))
	{
		instance_create_layer(obj_StrawberryPlatform.x - 40, obj_StrawberryPlatform.y - 250, "PlayerLayer", objGrabAppleToolTip);
	}
	
	//instance_create_layer(x, y, "PlayerLayer" ,obj_StrawberryRope)
	if (gamepad_button_check(0, gp_face2))
	{
		if (place_meeting(x, y - 10, obj_PhysicsPlayer) && (completed == false))
		{
				instance_create_layer(x, y, "PlayerLayer" ,obj_StrawberryRope)
				completed = true;
				createdOnce = true;
				timer1 = 15;

		}

		if (createdOnce = true && timer1 <= 0 && createdTwice == false)
		{
			instance_create_layer(x + 120, y, "PlayerLayer" ,obj_StrawberryRope)
			completed = true;
			timer2 = 15;
			createdTwice = true;
			createdOnce = false;
		}

		if (createdTwice = true && timer2 <= 0 && createdThree == false)
		{
			instance_create_layer(x + 240, y, "PlayerLayer" ,obj_StrawberryRope)
			completed = true;
			timer3 = 15;
			createdThree = true;
			createdTwice = false;
		}


		if (createdThree = true && timer3 <= 0 && createdFour == false)
		{
			instance_create_layer(x + 360, y, "PlayerLayer" ,obj_StrawberryRope)
			completed = true;
			timer4 = 15;
			createdFour = true;
			createdThree = false;
		}

		if (createdFour = true && timer4 <= 0 && createdFive == false)
		{
			instance_create_layer(x + 480, y, "PlayerLayer" ,obj_StrawberryRope)
			completed = true;
			timer5 = 15;
			createdFive = true;
			createdFour = false;
		}

		if (createdFive = true && timer5 <= 0 && createdSix == false)
		{
			instance_create_layer(x + 600, y, "PlayerLayer" ,obj_StrawberryRope)
			completed = true;
			createdSix = true;
			createdFive = false;
		}

		timer1--;
		timer2--;
		timer3--;
		timer4--;
		timer5--;
		destroyTimer = 15;
	}

}

if (place_meeting(x, y - 10, obj_Player2))
{
	if(!instance_exists(objGrabAppleToolTip))
	{
		instance_create_layer(obj_StrawberryPlatform.x, obj_StrawberryPlatform.y - 100, "PlayerLayer", objGrabAppleToolTip);
	}
	//instance_create_layer(x, y, "PlayerLayer" ,obj_StrawberryRope)
	
		if (gamepad_button_check(1, gp_face2))
	{
		if (place_meeting(x, y - 10, obj_Player2) && (completed == false))
		{
				instance_create_layer(x, y, "PlayerLayer" ,obj_StrawberryRope)
				completed = true;
				createdOnce = true;
				timer1 = 15;

		}

		if (createdOnce = true && timer1 <= 0 && createdTwice == false)
		{
			instance_create_layer(x + 120, y, "PlayerLayer" ,obj_StrawberryRope)
			completed = true;
			timer2 = 15;
			createdTwice = true;
			createdOnce = false;
		}

		if (createdTwice = true && timer2 <= 0 && createdThree == false)
		{
			instance_create_layer(x + 240, y, "PlayerLayer" ,obj_StrawberryRope)
			completed = true;
			timer3 = 15;
			createdThree = true;
			createdTwice = false;
		}


		if (createdThree = true && timer3 <= 0 && createdFour == false)
		{
			instance_create_layer(x + 360, y, "PlayerLayer" ,obj_StrawberryRope)
			completed = true;
			timer4 = 15;
			createdFour = true;
			createdThree = false;
		}

		if (createdFour = true && timer4 <= 0 && createdFive == false)
		{
			instance_create_layer(x + 480, y, "PlayerLayer" ,obj_StrawberryRope)
			completed = true;
			timer5 = 15;
			createdFive = true;
			createdFour = false;
		}

		if (createdFive = true && timer5 <= 0 && createdSix == false)
		{
			instance_create_layer(x + 600, y, "PlayerLayer" ,obj_StrawberryRope)
			completed = true;
			createdSix = true;
			createdFive = false;
		}

		timer1--;
		timer2--;
		timer3--;
		timer4--;
		timer5--;
		destroyTimer = 15;
	}

}

if (destroyTimer <= 0)
{
	instance_destroy(obj_StrawberryRope)
	completed = false;
	createdOnce = false;
	createdTwice = false;
	createdThree = false;
	createdFour = false;
	createdFive = false;
	createdSix = false;
}


if ((obj_Player2.x < obj_StrawberryPlatform.x - 64) || (obj_Player2.x > obj_StrawberryPlatform.x + 64))
{
	if ((((obj_PhysicsPlayer.x < obj_StrawberryPlatform.x - 64) || (obj_PhysicsPlayer.x > obj_StrawberryPlatform.x + 64)) && instance_exists(objGrabAppleToolTip)))
	{
		instance_destroy(objGrabAppleToolTip);
	}	
}


destroyTimer --;