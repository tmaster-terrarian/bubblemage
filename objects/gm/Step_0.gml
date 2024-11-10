if(!global.clickToStart && (mouse_check_button_pressed(mb_left) || !BROWSER))
{
    global.clickToStart = true;
    room = rmGame;

    if(BROWSER)
        browser_input_capture(true);
}

if(!BROWSER && keyboard_check_pressed(vk_f11))
{
    if(window_get_fullscreen())
    {
        window_set_fullscreen(false);

        window_set_position(max(0, global.screenPosXOld), max(0, global.screenPosYOld));

        global.screenSize = global.screenSizeOld;
    }
    else
    {
        global.screenPosXOld = window_get_x();
        global.screenPosYOld = window_get_y();

        window_set_fullscreen(true);

        global.screenSizeOld = global.screenSize;
        global.screenSize = display_get_height() / SCREEN_HEIGHT;
    }
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
