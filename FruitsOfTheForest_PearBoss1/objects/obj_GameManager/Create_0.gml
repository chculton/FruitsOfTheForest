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

//Player walking on Grass
global.on_walk_particle = part_type_create(); 
part_type_shape(global.on_walk_particle, pt_shape_square); 
part_type_sprite(global.on_walk_particle, spr_grass, 1, 0, 0); 
part_type_orientation(global.on_walk_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_walk_particle, 0.5, 1, 0, 0.2); 
part_type_alpha3(global.on_walk_particle, 0.5, 1, 0); 
part_type_speed(global.on_walk_particle, 1, 2, 0, 0.25); 
part_type_direction(global.on_walk_particle, 0, 360, 0, 10); 
part_type_life(global.on_walk_particle, 30, 60); 

//Player walking on Rock
global.on_rock_particle = part_type_create(); 
part_type_shape(global.on_rock_particle, pt_shape_square); 
part_type_sprite(global.on_rock_particle, spr_Rock, 1, 0, 0); 
part_type_orientation(global.on_rock_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_rock_particle, 0.5, 1, 0, 0.2); 
part_type_alpha3(global.on_rock_particle, 0.5, 1, 0); 
part_type_speed(global.on_rock_particle, 1, 2, 0, 0.25); 
part_type_direction(global.on_rock_particle, 0, 360, 0, 10); 
part_type_life(global.on_rock_particle, 30, 60); 


//Boss Rock
global.on_Bossrock_particle = part_type_create(); 
part_type_shape(global.on_Bossrock_particle, pt_shape_square); 
part_type_sprite(global.on_Bossrock_particle, spr_Rock, 1, 0, 0); 
part_type_orientation(global.on_Bossrock_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_Bossrock_particle, 5, 7, 0, 0.2); 
part_type_alpha3(global.on_Bossrock_particle, 0.5, 1, 0); 
part_type_speed(global.on_Bossrock_particle, 5, 7, 0, 0.25); 
part_type_direction(global.on_Bossrock_particle, 0, 360, 0, 10); 
part_type_life(global.on_Bossrock_particle, 30, 60);

//Player Blocking the Dragon Goo
global.on_Goo_particle = part_type_create(); 
part_type_shape(global.on_Goo_particle, pt_shape_square); 
part_type_sprite(global.on_Goo_particle, spr_DragonGoo, 1, 0, 0); 
part_type_orientation(global.on_Goo_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_Goo_particle, 5, 7, 0, 0.2); 
part_type_alpha3(global.on_Goo_particle, 0.5, 1, 0); 
part_type_speed(global.on_Goo_particle, 5, 7, 0, 0.25); 
part_type_direction(global.on_Goo_particle, 0, 360, 0, 10); 
part_type_life(global.on_Goo_particle, 50, 80); 

//Player Blocking the Dragon Goo
global.on_GreenGoo_particle = part_type_create(); 
part_type_shape(global.on_GreenGoo_particle, pt_shape_square); 
part_type_sprite(global.on_GreenGoo_particle, spr_grass, 1, 0, 0); 
part_type_orientation(global.on_GreenGoo_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_GreenGoo_particle, 5, 7, 0, 0.2); 
part_type_alpha3(global.on_GreenGoo_particle, 0.5, 1, 0); 
part_type_speed(global.on_GreenGoo_particle, 5, 7, 0, 0.25); 
part_type_direction(global.on_GreenGoo_particle, 0, 360, 0, 10); 
part_type_life(global.on_GreenGoo_particle, 50, 80); 


//Player hitting Pear Eye
global.on_PearTear_particle = part_type_create(); 
part_type_shape(global.on_PearTear_particle, pt_shape_square); 
part_type_sprite(global.on_PearTear_particle, spr_PearTears, 1, 0, 0); 
part_type_orientation(global.on_PearTear_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_PearTear_particle, 1.0, 4.0, 0, 0.2); 
part_type_alpha3(global.on_PearTear_particle, 0.5, 1, 0); 
part_type_speed(global.on_PearTear_particle, 10, 15, 0, 0.25); 
part_type_direction(global.on_PearTear_particle, 0, 360, 0, 10); 
part_type_life(global.on_PearTear_particle, 50, 100); 

//Player Destroying Log
global.on_Log_particle = part_type_create(); 
part_type_shape(global.on_Log_particle, pt_shape_square); 
part_type_sprite(global.on_Log_particle, spr_Particle_LogPiece1, 1, 0, 0); 
part_type_orientation(global.on_Log_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_Log_particle, 0.5, 1, 0, 0.2); 
part_type_alpha3(global.on_Log_particle, 0.5, 1, 0); 
part_type_speed(global.on_Log_particle, 1, 2, 0, 0.25); 
part_type_direction(global.on_Log_particle, 0, 360, 0, 10); 
part_type_life(global.on_Log_particle, 30, 60); 

//Player Destroying Log
global.on_Log2_particle = part_type_create(); 
part_type_shape(global.on_Log2_particle, pt_shape_square); 
part_type_sprite(global.on_Log2_particle, spr_Particle_LogPiece2, 1, 0, 0); 
part_type_orientation(global.on_Log2_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_Log2_particle, 0.5, 1, 0, 0.2); 
part_type_alpha3(global.on_Log2_particle, 0.5, 1, 0); 
part_type_speed(global.on_Log2_particle, 8, 10, 0, 0.25); 
part_type_direction(global.on_Log2_particle, 0, 360, 0, 10); 
part_type_life(global.on_Log2_particle, 30, 60); 

//Player Destroying Bush
global.on_Bush1_particle = part_type_create(); 
part_type_shape(global.on_Bush1_particle, pt_shape_square); 
part_type_sprite(global.on_Bush1_particle, spr_Particle_BasicLeaf, 1, 0, 0); 
part_type_orientation(global.on_Bush1_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_Bush1_particle, 0.5, 1, 0, 0.2); 
part_type_alpha3(global.on_Bush1_particle, 0.5, 1, 0); 
part_type_speed(global.on_Bush1_particle, 1, 2, 0, 0.25); 
part_type_direction(global.on_Bush1_particle, 0, 360, 0, 10); 
part_type_life(global.on_Bush1_particle, 30, 60); 

//Player Destroying Bush
global.on_Bush2_particle = part_type_create(); 
part_type_shape(global.on_Bush2_particle, pt_shape_square); 
part_type_sprite(global.on_Bush2_particle, spr_Particle_BasicPiece1, 1, 0, 0); 
part_type_orientation(global.on_Bush2_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_Bush2_particle, 0.5, 1, 0, 0.2); 
part_type_alpha3(global.on_Bush2_particle, 0.5, 1, 0); 
part_type_speed(global.on_Bush2_particle, 1, 2, 0, 0.25); 
part_type_direction(global.on_Bush2_particle, 0, 360, 0, 10); 
part_type_life(global.on_Bush2_particle, 30, 60); 

//Player Destroying Bush
global.on_Bush3_particle = part_type_create(); 
part_type_shape(global.on_Bush3_particle, pt_shape_square); 
part_type_sprite(global.on_Bush3_particle, spr_Particle_BasicPiece2, 1, 0, 0); 
part_type_orientation(global.on_Bush3_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_Bush3_particle, 0.5, 1, 0, 0.2); 
part_type_alpha3(global.on_Bush3_particle, 0.5, 1, 0); 
part_type_speed(global.on_Bush3_particle, 1, 2, 0, 0.25); 
part_type_direction(global.on_Bush3_particle, 0, 360, 0, 10); 
part_type_life(global.on_Bush3_particle, 30, 60); 

//Player Destroying Bush
global.on_Bush4_particle = part_type_create(); 
part_type_shape(global.on_Bush4_particle, pt_shape_square); 
part_type_sprite(global.on_Bush4_particle, spr_Particle_BasicPiece3, 1, 0, 0); 
part_type_orientation(global.on_Bush4_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_Bush4_particle, 0.5, 1, 0, 0.2); 
part_type_alpha3(global.on_Bush4_particle, 0.5, 1, 0); 
part_type_speed(global.on_Bush4_particle, 1, 2, 0, 0.25); 
part_type_direction(global.on_Bush4_particle, 0, 360, 0, 10); 
part_type_life(global.on_Bush4_particle, 30, 60); 

//Player Destroying Bush
global.on_Point1_particle = part_type_create(); 
part_type_shape(global.on_Point1_particle, pt_shape_square); 
part_type_sprite(global.on_Point1_particle, spr_Particle_PointLeaf, 1, 0, 0); 
part_type_orientation(global.on_Point1_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_Point1_particle, 0.5, 1, 0, 0.2); 
part_type_alpha3(global.on_Point1_particle, 0.5, 1, 0); 
part_type_speed(global.on_Point1_particle, 1, 2, 0, 0.25); 
part_type_direction(global.on_Point1_particle, 0, 360, 0, 10); 
part_type_life(global.on_Point1_particle, 30, 60); 

//Player Destroying Bush
global.on_Point2_particle = part_type_create(); 
part_type_shape(global.on_Point2_particle, pt_shape_square); 
part_type_sprite(global.on_Point2_particle, spr_Particle_PointPiece1, 1, 0, 0); 
part_type_orientation(global.on_Point2_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_Point2_particle, 0.5, 1, 0, 0.2); 
part_type_alpha3(global.on_Point2_particle, 0.5, 1, 0); 
part_type_speed(global.on_Point2_particle, 1, 2, 0, 0.25); 
part_type_direction(global.on_Point2_particle, 0, 360, 0, 10); 
part_type_life(global.on_Point2_particle, 30, 60); 

//Player Destroying Bush
global.on_Point3_particle = part_type_create(); 
part_type_shape(global.on_Point3_particle, pt_shape_square); 
part_type_sprite(global.on_Point3_particle, spr_Particle_PointPiece2, 1, 0, 0); 
part_type_orientation(global.on_Point3_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_Point3_particle, 0.5, 1, 0, 0.2); 
part_type_alpha3(global.on_Point3_particle, 0.5, 1, 0); 
part_type_speed(global.on_Point3_particle, 1, 2, 0, 0.25); 
part_type_direction(global.on_Point3_particle, 0, 360, 0, 10); 
part_type_life(global.on_Point3_particle, 30, 60); 

//Player Destroying Bush
global.on_Point4_particle = part_type_create(); 
part_type_shape(global.on_Point4_particle, pt_shape_square); 
part_type_sprite(global.on_Point4_particle, spr_Particle_PointPiece3, 1, 0, 0); 
part_type_orientation(global.on_Point4_particle, 0, 360, 5, 0, 1); 
part_type_size(global.on_Point4_particle, 0.5, 1, 0, 0.2); 
part_type_alpha3(global.on_Point4_particle, 0.5, 1, 0); 
part_type_speed(global.on_Point4_particle, 1, 2, 0, 0.25); 
part_type_direction(global.on_Point4_particle, 0, 360, 0, 10); 
part_type_life(global.on_Point4_particle, 30, 60); 