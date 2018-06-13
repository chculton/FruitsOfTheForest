//ViewPort = room_get_viewport(rm_Level1, 0);
vx = camera_get_view_x(view_camera[0]);
spawnSpacing1 = 0;
spawnSpacing2 = 0;

Player1HealthbarSize = 4;
Player2HealthbarSize = 4;
global.DecreaseHealthBarP1 = false;
global.DecreaseHealthBarP2 = false;

instance_create_depth(300, 300, "PlayerLayer", obj_PhysicsPlayer);
instance_create_depth(400, 300, "PlayerLayer", obj_Player2);
instance_create_depth(350, 200, "PlayerLayer", obj_Blender);

for(i = 0; i < global.Player1Health; i++)
{
	Array1[i] = instance_create_depth(vx + 10, 50 + spawnSpacing1, "PlayerLayer", obj_CapyberaHead1);
	spawnSpacing1 += 80;
}

for(i = 0; i < global.Player2Health; i++)
{
	Array2[i] = instance_create_depth(vx + 100, 50 + spawnSpacing2, "PlayerLayer", obj_CapyberaHead2);
	spawnSpacing2 += 80;
}