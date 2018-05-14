timer = 0;
phy_rotation = 0;
phy_fixed_rotation = true;

instance_create_layer(obj_PearBossPhase2.x - 65, obj_PearBossPhase2.y - 300, "Instances_1", obj_PearCrownLeft);
instance_create_layer(obj_PearBossPhase2.x + 25, obj_PearBossPhase2.y - 300, "Instances_1", obj_PearCrownRight);
instance_create_layer(obj_PearBossPhase2.x - 165, obj_PearBossPhase2.y + 100, "Instances_1", obj_PearRootOne);
instance_create_layer(obj_PearBossPhase2.x, obj_PearBossPhase2.y + 100, "Instances_1", obj_PearRootTwo);
instance_create_layer(obj_PearBossPhase2.x + 165, obj_PearBossPhase2.y + 100, "Instances_1", obj_PearRootThree);
