if(!global.clickToStart && (mouse_check_button_pressed(mb_left) || !IS_BROWSER))
{
    global.clickToStart = true;
    room = rmGame;

    browser_input_capture(true);
}

if(!IS_BROWSER && keyboard_check_pressed(vk_f11))
{
    window_set_fullscreen(!window_get_fullscreen());
}

if(!global.clickToStart)
    exit;

if(global.gamepadSupported)
{
    var gp_num = gamepad_get_device_count();
    for(var i = 0; i < gp_num; i++)
    {
        if(gamepad_is_connected(i))
        {
            gamepad_set_axis_deadzone(i, 0.2);
            gamepad_set_button_threshold(i, 0.3);
        }
    }
}
