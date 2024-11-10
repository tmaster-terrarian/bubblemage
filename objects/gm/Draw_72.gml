if((surface_get_width(application_surface) != SCREEN_WIDTH) || (surface_get_height(application_surface) != SCREEN_HEIGHT))
{
    surface_resize(application_surface, SCREEN_WIDTH, SCREEN_HEIGHT);
}

// html target only
if(BROWSER && (browser_width > window_get_width()) || (browser_height > window_get_height()))
{
    global.screenSize = floor(browser_width / SCREEN_WIDTH);

    window_set_size(browser_width, browser_height);
}
else
{
    var _targetW = min(SCREEN_WIDTH * global.screenSize,  display_get_width());
    var _targetH = min(SCREEN_HEIGHT * global.screenSize, display_get_height());

    if(window_get_width() != _targetW || window_get_height() != _targetH)
    {
        window_set_size(_targetW, _targetH);

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
