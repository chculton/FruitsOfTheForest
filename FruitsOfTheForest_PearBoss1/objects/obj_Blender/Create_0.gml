/*obj_Blender.x = mouse_x;
obj_Blender.y = mouse_y;*/
global.GrabApples1 = false;
global.GrabApples2 = false;

isReleased = true;
HoldingDelores = false;
offset_y = 0;
host = self;
next_rope = instance_create_layer(obj_Blender.x, obj_Blender.y+offset_y, "PlayerLayer", obj_Rope);
firstRope = next_rope;
spd = 50;
xvec = 0;
yvec = 0;
HasBeenThrown = true;
phy_fixed_rotation = true;
HeldByPlayer1 = false;
HeldByPlayer2 = false;

attach = physics_joint_distance_create(obj_Blender, next_rope, obj_Blender.x, obj_Blender.y, next_rope.x, next_rope.y, false);

with(next_rope){
	parent = obj_Blender.id;
}

repeat(15)
{
	offset_y += 0.1;
	last_rope = next_rope;
	next_rope = instance_create_layer(x, y+offset_y, "PlayerLayer", obj_Rope);
	
	link = physics_joint_distance_create(last_rope, next_rope, last_rope.x, last_rope.y, next_rope.x, next_rope.y, false);
	
	with(next_rope)
	{
		parent = other.last_rope;
	}
	
}