sprite_index = spr_Player2RightIdle;

Direction = "Right";
spd = 16;
jmp = 6000;
jump = false;
jumping = false;
image_speed = 0.5;

right = gp_axislh;
left = gp_axislh;

jump_cooldown = 0;

Player1Health = 5;
EndOfScreen = 1300;
damageTimer = 15;
damaged = false;

global.Player2Health = 3;

physics_world_gravity(0, 100);