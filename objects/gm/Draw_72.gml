if((surface_get_width(application_surface) != SCREEN_WIDTH + 1) || (surface_get_height(application_surface) != SCREEN_HEIGHT + 1))
{
    surface_resize(application_surface, SCREEN_WIDTH + 1, SCREEN_HEIGHT + 1);
}

// html target only
if(BROWSER && (global.screenSize != floor(browser_height / SCREEN_HEIGHT)))
{
    global.screenSize = floor(browser_height / SCREEN_HEIGHT);

    window_set_size(SCREEN_WIDTH * global.screenSize, SCREEN_HEIGHT * global.screenSize);
}
else if(!window_get_fullscreen())
{
    var _targetW = min(SCREEN_WIDTH * global.screenSize,  display_get_width());
    var _targetH = min(SCREEN_HEIGHT * global.screenSize, display_get_height());

    if(window_get_width() != _targetW || window_get_height() != _targetH)
    {
        window_set_size(_targetW, _targetH);

        global.screenSize = floor(_targetH / SCREEN_HEIGHT);

        if(_targetW == display_get_width() || _targetH == display_get_height())
        {
            window_set_fullscreen(true);
        }
        else
        {
            window_set_fullscreen(false);
        }
    }
}
