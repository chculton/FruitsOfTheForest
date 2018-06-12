sprite_index = spr_Player1RightIdle;
EndOfScreen = 1300;

Direction = "Right";
spd = 16;
jmp = 6000;
jump = false;
jumping = false;
image_speed = 0.5;
notHolding = true;
damageTimer = 15;
damaged = false;

//HoldingDelores = false;

right = gp_axislh;
left = gp_axislh;

jump_cooldown = 0;

Player1Health = 5;

physics_world_gravity(0, 100);

global.Player1Health = 5;
global.player1Holding = false;
