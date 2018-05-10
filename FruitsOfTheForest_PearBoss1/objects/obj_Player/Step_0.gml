//Horizontal Movement

key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_jump = keyboard_check_pressed(ord("W"));

var move = key_right - key_left;

horizontalSpeed = move * walkSpeed;

verticalSpeed = verticalSpeed + objectGravity;

//horizontal Collision

if (place_meeting(x + horizontalSpeed, y , obj_Platform))
{
	while (!place_meeting(x + sign(horizontalSpeed), y, obj_Platform))
	{
		x = x + sign(horizontalSpeed);
	}
	
	horizontalSpeed = 0;
}

x = x + horizontalSpeed;

//Vertical Collision

if (place_meeting(x , y + verticalSpeed , obj_Platform))
{
	while (!place_meeting(x , y + sign(verticalSpeed), obj_Platform))
	{
		y = y + sign(verticalSpeed);
	}
	
	verticalSpeed = 0;
}

y = y + verticalSpeed;

//Jumping

if (place_meeting(x, y + 1, obj_Platform) && (key_jump))
{
	verticalSpeed = -20;
}













/*
if(keyboard_check(ord("A"))){
sprite_index = spr_Player
x -= 10;
}
if(keyboard_check(ord("D"))){
sprite_index = spr_Player
x += 10;
}

if (y < 750)
{
	y = y + 5;
}
