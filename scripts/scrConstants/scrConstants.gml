#macro SCREEN_WIDTH 320
#macro SCREEN_HEIGHT 180

global.screenSize = 4;
global.screenSizeOld = global.screenSize;

#macro INPUT_SHOOT (keyboard_check(ord("Z")) || mouse_check_button(mb_left) || (gamepad_button_value(0, gp_shoulderrb) > 0.1) || (gamepad_button_value(0, gp_shoulderlb) > 0.1))

#macro INPUT_MOVEX_RAW clamp(((keyboard_check(ord("D")) + keyboard_check(vk_right)) - (keyboard_check(ord("A")) + keyboard_check(vk_left))) + (gamepad_axis_value(0, gp_axislh) * gamepad_is_connected(0)), -1, 1)
#macro INPUT_MOVEY_RAW clamp(((keyboard_check(ord("S")) + keyboard_check(vk_down))  - (keyboard_check(ord("W")) + keyboard_check(vk_up)))   + (gamepad_axis_value(0, gp_axislv) * gamepad_is_connected(0)), -1, 1)

global.settings = {
    // aimWithMouse: true
};

global.gamepadSupported = gamepad_is_supported();

#macro BROWSER (os_browser != browser_not_a_browser)

if(!BROWSER)
{
    if(os_type == os_windows)
        window_enable_borderless_fullscreen(true);

    global.screenPosXOld = window_get_x();
    global.screenPosYOld = window_get_y();
}
