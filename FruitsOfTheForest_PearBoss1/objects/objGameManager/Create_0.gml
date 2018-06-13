//ViewPort = room_get_viewport(rm_Level1, 0);
var vx = camera_get_view_x(view_camera[0]);
spawnSpacing1 = 0;
spawnSpacing2 = 0;

Player1HealthbarSize = 4;
Player2HealthbarSize = 4;
global.DecreaseHealthBarP1 = false;
global.DecreaseHealthBarP2 = false;

for(i = 0; i < global.Player1Health; i++)
{
	Array1[i] = instance_create_depth(vx + spawnSpacing1, 50, "PlayerLayer", objCapyberaHead1);
	spawnSpacing1 += 100;
}

for(i = 0; i < global.Player2Health; i++)
{
	Array2[i] = instance_create_depth(vx + spawnSpacing2, 150, "PlayerLayer", objCapyberaHead2);
	spawnSpacing2 += 100;
}