/******************************************************************************/
#region    –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get the current width of the game window in pixels.
/// ----------------------------------------------------------------------------
/// @returns {number}
/// ----------------------------------------------------------------------------
function gamemaker_window_get_x_dimension() {
    return window_get_width()
}

/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get the current height of the game window in pixels.
/// ----------------------------------------------------------------------------
/// @returns {number}
/// ----------------------------------------------------------------------------
function gamemaker_window_get_y_dimension() {
    return window_get_height()
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {number} x
/// <parameter_description>
/// @param {number} y
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_window_set_dimensions(parameters = {}) {
    window_set_size(parameters.x, parameters.y)
    return undefined
}

/// ----------------------------------------------------------------------------
/// @description
/// This function is used to get the aspect ratio of the current game window.
/// ----------------------------------------------------------------------------
/// @returns {number}
/// ----------------------------------------------------------------------------
function gamemaker_window_get_aspectratio() {
    return (gamemaker_window_get_x_dimension() / gamemaker_window_get_y_dimension())
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_window_center() {
    gamemaker_call_later({ delay_frames : 1, callback : window_center })
    /// do this manually to avoid delay
    /// window_set_position(x, y)
}

/******************************************************************************/
#endregion –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/







/// ----------------------------------------------------------------------------
/// @function set_default_caption_window_generic(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
function set_default_caption_window_generic(arguments = {}) {
    return gamemaker_window_set_default_caption(arguments)
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_window_set_caption(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function is used to change the caption of the game window.
///
/// NOTE: This is a generification of 'window_set_caption'.
///
/// NOTE: The window caption is independent of the current room even though the
/// GameMaker manual claims otherwise.
/// ----------------------------------------------------------------------------
/// @param {string} string
/// The caption to display.
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_window_set_caption(parameters = {}) {
    var _string = parameters[$ "string"]
    window_set_caption(_string)
}

/// ----------------------------------------------------------------------------
/// @function reset_caption_window_generic(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
function reset_caption_window_generic(arguments = {}) {
    return gamemaker_window_reset_caption(arguments)
}

/// ----------------------------------------------------------------------------
/// @function set_x_minimum_dimensions_window_generic(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
function set_x_minimum_dimensions_window_generic(arguments = {}) {
    return gamemaker_window_set_x_minimum_dimensions(arguments)
}

/// ----------------------------------------------------------------------------
/// @function set_y_minimum_dimensions_window_generic(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
function set_y_minimum_dimensions_window_generic(arguments = {}) {
    return gamemaker_window_set_y_minimum_dimensions(arguments)
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_window_set_minimum_dimensions(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
function gamemaker_window_set_minimum_dimensions(arguments = {}) {
    if (struct_exists(arguments, "x")) {
        window_set_min_width(arguments.x)
    }
    if (struct_exists(arguments, "y")) {
        window_set_min_height(arguments.y)
    }
    return self
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// ----------------------------------------------------------------------------
function gamemaker_window_is_fullscreen() {
    return window_get_fullscreen()
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {boolean} fullscreen
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_window_set_fullscreen(parameters = {}) {
    window_set_fullscreen(parameters.fullscreen)
    return undefined
}

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

    static set_default_caption = function(arguments = {}) {
        private.default_caption = arguments.caption
        return self
    }

    static set_caption = gamemaker_window_set_caption

    static reset_caption = function(arguments = {}) {
        if (private.default_caption != undefined) {
            window_set_caption(private.default_caption)
        }
        return self
    }

    static get_background_colour = function(arguments = {}) {
        return window_get_colour()
    }

    static set_background_colour = function(arguments = {}) {
        window_set_colour(arguments.background_colour)
        return self
    }

    static get_fullscreen = function(arguments = {}) {
        
        return
    }

    static set_fullscreen = function(arguments = {}) {
        
        return self
    }

    static get_x_position = function(arguments = {}) {
        return window_get_x()
    }

    static get_y_position = function(arguments = {}) {
        return window_get_y()
    }

    static get_dimensions = function(arguments = {}) {
        return {
            x : window_get_x(),
            y : window_get_y(),
        }
    }

    static set_position = function(arguments = {}) {
        var _x = arguments[$ "x"] ?? window_get_x()
        var _y = arguments[$ "y"] ?? window_get_y()
        window_set_position(_x, _y)
        return self
    }

    static get_x_dimension = function(arguments = {}) {
        return gamemaker_window_get_x_dimension()
    }

    static get_y_dimension = function(arguments = {}) {
        return gamemaker_window_get_y_dimension()
    }

    static get_dimensions = function(arguments = {}) {
        return {
            x : gamemaker_window_get_x_dimension(),
            y : gamemaker_window_get_y_dimension(),
        }
    }

    static set_dimensions = function(arguments = {}) {
        var _x = arguments[$ "x"] ?? gamemaker_window_get_x_dimension()
        var _y = arguments[$ "y"] ?? gamemaker_window_get_y_dimension()
        window_set_size(_x, _y)
        return self
    }

    static get_aspect_ratio = function(arguments = {}) {
        return gamemaker_window_get_x_dimension() / gamemaker_window_get_y_dimension()
    }

    static set_x_minimum_dimensions = function(arguments = {}) {
        window_set_min_width(width)
        return self
    }

    static set_y_minimum_dimensions = function(arguments = {}) {
        window_set_min_height(height)
        return self
    }

    static set_minimum_dimensions = function(arguments = {}) {

    }

    static set_x_maximum_dimensions = function(arguments = {}) {
        window_set_max_width(width)
        return self
    }

    static set_y_maximum_dimensions = function(arguments = {}) {
        window_set_max_height(height)
        return self
    }

    static set_maximum_dimensions = function(arguments = {}) {
        if (struct_exists(arguments, "x")) {
            window_set_max_width(arguments.x)
        }
        if (struct_exists(arguments, "y")) {
            window_set_max_height(arguments.y)
        }
        return self
    }


}
