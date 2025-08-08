// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// 
function gamemaker_window_set_default_caption(parameters) {

}

/// This function is used to change the caption of the game window.
/// NOTE: This is a generification of 'window_set_caption'.
/// NOTE: The window caption is independent of the current room even though the
/// GameMaker manual claims otherwise.
/// @param {string} string The caption to display.
/// @returns {Undefined}
function gamemaker_window_set_caption(parameters) {
    var _string = parameters[$ "string"];
    window_set_caption(_string);
}

/// 
function gamemaker_window_reset_caption(parameters = {}) {

}

/// Centers the game window on the display/browser.
/// **NOTE:** Windows, Ubuntu, macOS, and HTML5 only
/// **NOTE:** If you have resized the game window in the current step, by switching from full screen to windowed or using window_set_size(), this function should be called at least 10 steps later.
/// @returns {Undefined}
function gamemaker_window_center() {
    window_center();
    return undefined;
    /// gamemaker_call_later({ delay_frames : 1, callback : window_center });
    /// do this manually to avoid delay
    /// window_set_position(x, y)
}

/// Returns whether the game window is in fullscreen mode.
/// @returns {Bool}
function gamemaker_window_is_fullscreen() {
    return window_get_fullscreen();
}

/// 
/// @param {Bool} fullscreen
/// @returns {Undefined}
function gamemaker_window_set_fullscreen(parameters = {}) {
    window_set_fullscreen(parameters.fullscreen);
    return undefined;
}

/// This function is used to get the current width of the game window in pixels.
/// @returns {Real}
function gamemaker_window_get_x_dimension() {
    return window_get_width();
}

/// This function is used to get the current height of the game window in pixels.
/// @returns {Real}
function gamemaker_window_get_y_dimension() {
    return window_get_height();
}

/// 
/// `parameters.x` {Real}
/// `parameters.y` {Real}
/// @returns {Undefined}
function gamemaker_window_set_dimensions(parameters) {
    var _x_dimension = parameters.x;
    var _y_dimension = parameters.y;
    window_set_size(_x_dimension, _y_dimension);
    return undefined;
}

/// This function is used to get the aspect ratio of the current game window.
/// @returns {Real}
function gamemaker_window_get_aspectratio() {
    return (gamemaker_window_get_x_dimension() / gamemaker_window_get_y_dimension());
}

/// 
function gamemaker_window_set_minimum_dimensions(parameters = {}) {
    if (struct_exists(parameters, "x")) {
        window_set_min_width(parameters.x);
    }
    if (struct_exists(parameters, "y")) {
        window_set_min_height(parameters.y);
    }
    return self;
}

function gamemaker_window_set_maximum_dimensions(parameters = {}) {
    return undefined;
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function Window() constructor {

    private = {
        default_caption : undefined,
    }

    window_handle
    window_has_focus

    window_set_showborder
    window_get_showborder

    window_get_visible_rects
    window_set_rectangle

    static set_default_caption = function(parameters = {}) {
        private.default_caption = parameters.caption
        return self
    }

    static set_caption = gamemaker_window_set_caption

    static reset_caption = function(parameters = {}) {
        if (private.default_caption != undefined) {
            window_set_caption(private.default_caption)
        }
        return self
    }

    static get_background_colour = function(parameters = {}) {
        return window_get_colour()
    }

    static set_background_colour = function(parameters = {}) {
        window_set_colour(parameters.background_colour)
        return self
    }

    static get_fullscreen = function(parameters = {}) {
        
        return
    }

    static set_fullscreen = function(parameters = {}) {
        
        return self
    }

    static get_x_position = function(parameters = {}) {
        return window_get_x()
    }

    static get_y_position = function(parameters = {}) {
        return window_get_y()
    }

    static get_dimensions = function(parameters = {}) {
        return {
            x : window_get_x(),
            y : window_get_y(),
        }
    }

    static set_position = function(parameters = {}) {
        var _x = parameters[$ "x"] ?? window_get_x()
        var _y = parameters[$ "y"] ?? window_get_y()
        window_set_position(_x, _y)
        return self
    }

    static get_x_dimension = function(parameters = {}) {
        return gamemaker_window_get_x_dimension()
    }

    static get_y_dimension = function(parameters = {}) {
        return gamemaker_window_get_y_dimension()
    }

    static get_dimensions = function(parameters = {}) {
        return {
            x : gamemaker_window_get_x_dimension(),
            y : gamemaker_window_get_y_dimension(),
        }
    }

    static set_dimensions = function(parameters = {}) {
        var _x = parameters[$ "x"] ?? gamemaker_window_get_x_dimension()
        var _y = parameters[$ "y"] ?? gamemaker_window_get_y_dimension()
        window_set_size(_x, _y)
        return self
    }

    static get_aspect_ratio = function(parameters = {}) {
        return gamemaker_window_get_x_dimension() / gamemaker_window_get_y_dimension()
    }

    static set_x_minimum_dimensions = function(parameters = {}) {
        window_set_min_width(width)
        return self
    }

    static set_y_minimum_dimensions = function(parameters = {}) {
        window_set_min_height(height)
        return self
    }

    static set_minimum_dimensions = function(parameters = {}) {

    }

    static set_x_maximum_dimensions = function(parameters = {}) {
        window_set_max_width(width)
        return self
    }

    static set_y_maximum_dimensions = function(parameters = {}) {
        window_set_max_height(height)
        return self
    }

    static set_maximum_dimensions = function(parameters = {}) {
        if (struct_exists(parameters, "x")) {
            window_set_max_width(parameters.x)
        }
        if (struct_exists(parameters, "y")) {
            window_set_max_height(parameters.y)
        }
        return self
    }

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――