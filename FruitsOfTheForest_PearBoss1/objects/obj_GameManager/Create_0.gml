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


global.particle_system =  part_system_create_layer("Particles", true);

//Player shooting and enemy explosion
global.on_walk_particle = part_type_create(); 
part_type_shape(global.on_walk_particle, pt_shape_square); 
part_type_sprite(global.on_walk_particle, sprgrass, 1, 0, 0); 
part_type_orientation(global.on_walk_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_walk_particle, 0.5, 1, 0, 0.2); 
part_type_alpha3(global.on_walk_particle, 0.5, 1, 0); 
part_type_speed(global.on_walk_particle, 1, 2, 0, 0.25); 
part_type_direction(global.on_walk_particle, 0, 360, 0, 10); 
part_type_life(global.on_walk_particle, 30, 60); 
