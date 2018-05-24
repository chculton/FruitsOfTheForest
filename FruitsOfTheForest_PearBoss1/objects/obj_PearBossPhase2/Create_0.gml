phy_rotation = 0;
phy_fixed_rotation = true;

instance_create_layer(obj_PearBossPhase2.x - 65, obj_PearBossPhase2.y - 300, "PlayerLayer", obj_PearCrownLeft);
instance_create_layer(obj_PearBossPhase2.x + 25, obj_PearBossPhase2.y - 300, "PlayerLayer", obj_PearCrownRight);
instance_create_layer(obj_PearBossPhase2.x - 165, obj_PearBossPhase2.y + 100, "PlayerLayer", obj_PearRootOne);
instance_create_layer(obj_PearBossPhase2.x, obj_PearBossPhase2.y + 100, "PlayerLayer", obj_PearRootTwo);
instance_create_layer(obj_PearBossPhase2.x + 165, obj_PearBossPhase2.y + 100, "PlayerLayer", obj_PearRootThree);

inRange = false;
attacking = false;

sensoryRange = 1920;
timer = 15;



spd = 10;

jmp = 100000;
jumping = false;
jump_cooldown = 0;

dead = false;