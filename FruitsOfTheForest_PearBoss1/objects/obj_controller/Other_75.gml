show_debug_message("Event = " + async_load[? "event_type"]);        // Debug cocde so you can see which event has been
show_debug_message("Pad = " + string(async_load[? "pad_index"]));   // triggered and the pad associated with it.

/*switch(async_load[? "event_type"])             // Parse the async_load map to see which event has been triggered
{
case "gamepad discovered":                     // A game pad has been discovered
    var pad = async_load[? "pad_index"];       // Get the pad index value from the async_load map
    gamepad_set_axis_deadzone(pad, 0.5);       // Set the "deadzone" for the axis
    gamepad_set_button_threshold(pad, 0.1);    // Set the "threshold" for the triggers
    if !(instance_exists(obj_PhysicsPlayer[pad]))         // Check to see if an instance is associated with this pad index
        {
        // Create a player object and assign it a pad number
        player[pad] = instance_create_layer(64 + random(room_width - 128), 64 + random(room_height - 128), "PlayerLayer", obj_PhysicsPlayer);
        with (obj_PhysicsPlayer[pad])
            {
            image_index = pad;
            pad_num = pad;
            }
        }
    break;
case "gamepad lost":                           // Gamepad has been removed or otherwise disabled
    var pad = async_load[? "pad_index"];       // Get the pad index
    if (instance_exists(obj_PhysicsPlayer[pad]))          // Check for a player instance associated with the pad and remove it
        {
        with (obj_PhysicsPlayer[pad])
            {
            instance_destroy();
            }
        obj_PhysicsPlayer[pad] = noone;                   // Set the controller array to "noone" so it detects a new pad being connected
        }
    break;
}*/