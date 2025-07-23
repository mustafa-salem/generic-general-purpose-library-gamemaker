// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― CONSTANTS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――― CONSTANTS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― FUNCTIONS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function gamemaker_objectinstance(parameters = {}) {
    return _return
}

function gamemaker_objectinstance_get_object(parameters = {}) {
    var _instance = parameters[$ "instance"];
    return _instance.object_index;
}

/// ----------------------------------------------------------------------------
/// @description
/// This script function serves as a proxy for the static method function:
/// ----------------------------------------------------------------------------
function gamemaker_objectinstance_exists(parameters = {}) {
    var _instance = parameters[$ "instance"];
    return instance_exists(_instance);
}

/// ----------------------------------------------------------------------------
/// @description
/// This script function serves as a wrapper for the built-in function:
/// instance_destroy
/// ----------------------------------------------------------------------------
/// @param {Struct} arguments
///
/// @param {...} arguments.object_instance
/// * Struct.Object
/// * Name.Object
/// * Id.Object
/// * Struct.GameMakerObjectInstance
/// * Id.GameMakerObjectInstance
///
/// @param {boolean} arguments.execute_destroy_event
/// Whether to execute the destroy event of the object instance being destroyed.
/// ----------------------------------------------------------------------------
/// @returns {Any} self
/// ----------------------------------------------------------------------------
function gamemaker_objectinstance_destroy(parameters = {}) {
    var _instances     = parameters[$ "instance"];
    var _execute_event = parameters[$ "execute_event"]
    for (var i = 0; i < array_length(_instances); i++) {
        if (instance_exists(_instances[i])) {
            instance_destroy(_instances[i], _execute_destroy_event);
        }
    }
    return undefined;
}

function gamemaker_objectinstance_get_x_position(parameters = {}) {
    var _instance = parameters[$ "instance"];
    return _instance.x;
}

function gamemaker_objectinstance_get_y_position(parameters = {}) {
    var _instance = parameters[$ "instance"];
    return _instance.y;
}

function gamemaker_objectinstance_set_position(parameters = {}) {
	var _instance = parameters[$ "instance"];
    var _x        = parameters[$ "x"];
    var _y        = parameters[$ "y"];

    _instance.x = _x;
    _instance.y = _y;
    return undefined;
    /*
    var alignment = arguments[$ "alignment"] ?? "top_left"
    if (alignment == "sprite_center") {
        x += target.sprite_width / 2 - target.sprite_xoffset
        y += target.sprite_height / 2 - target.sprite_yoffset
    }
    */
}

function gamemaker_objectinstance_get_x_dimension(parameters = {}) {
    var _instance = parameters[$ "instance"];
    return _instance.sprite_width;
}

function gamemaker_objectinstance_get_y_dimension(parameters = {}) {
    var _instance = parameters[$ "instance"];
    return _instance.sprite_height;
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {mixed} object_instance
/// The object instance to target.
///
/// @param {number} y_position
/// The y position to use as a basis for the depth sorting algorithm.
/// ----------------------------------------------------------------------------
function gamemaker_objectinstance_depthsort(parameters) {
    var _object_instance = parameters.object_instance
	_object_instance.depth = 8000 - room_height / 2 + _object_instance.y + _object_instance.sprite_height - _object_instance.sprite_yoffset
}

function gamemaker_objectinstance_bounding_box(parameters = {}) {
    /// bbox_bottom - bbox_top
    /// bbox_right - bbox_left
}

function gamemaker_objectinstance_get_bounding_box_x_position(parameters = {}) {
    return self.bbox_left
}

function gamemaker_objectinstance_get_bounding_box_y_position(parameters = {}) {
    return self.bbox_top
}

function gamemaker_objectinstance_get_bounding_box_x_dimension(parameters = {}) {
    return self.bbox_right - self.bbox_left
}

function gamemaker_objectinstance_get_bounding_box_y_dimension(parameters = {}) {
    return self.bbox_bottom - self.bbox_top
}

function gamemaker_objectinstance_is_in_sequence(parameters = {}) {
    var _handle
    return _handle.in_sequence
}

function gamemaker_objectinstance_get_sequence_instance(parameters = {}) {
    var _handle
    return _handle.sequence_instance
}

/// @description
/// This is a generification of 'event_inherited'.
function gamemaker_objectinstance_execute_parentevent(parameters = {}) {
    return _return
}

/// @param {type} object_instance
/// <parameter_description>
/// @param {type} flash_colour
/// <parameter_description>
/// @param {type} flash_alpha
/// <parameter_description>
/// @param {shader} [shader]
/// The shader to use while drawing.
/// @param {struct} [shader_variables]
/// The variables to pass to the shader.
function gamemaker_objectinstance_draw(parameters = {}) {
    var _object_instance_handle = gamemaker_objectinstance_get_handle(parameters)
    parameters[$ "sprite"]     ??= _object_instance_handle.sprite_index
    parameters[$ "frame"]      ??= _object_instance_handle.image_index
    parameters[$ "x_position"] ??= _object_instance_handle.x
    parameters[$ "y_position"] ??= _object_instance_handle.y
    parameters[$ "x_scale"]    ??= _object_instance_handle.image_xscale
    parameters[$ "y_scale"]    ??= _object_instance_handle.image_yscale
    parameters[$ "rotation"]   ??= _object_instance_handle.image_angle
    parameters[$ "alpha"]      ??= _object_instance_handle.image_alpha
    parameters[$ "colour"]     ??= _object_instance_handle.image_blend
    gamemaker_sprite_draw(parameters);
}

function gamemaker_objectinstance_move_and_collide(parameters = {}) {
    var _instance = parameters[$ "instance"] ?? noone;
    with (_instance) {
        move_and_collide(_x_distance, _y_distance, _collidables);
    }
    return undefined;
}

function gamemaker_objectinstance_set_creationcode(parameters = {}) {
    var _instance = parameters[$ "instance"];
    return undefined;
}

/// ----------------------------------------------------------------------------
/// @description This function returns whether the given object_instance is
/// an instance of the given object or an instance of an object that is a
/// direct or indirect child of the given object.
/// ----------------------------------------------------------------------------
/// @param {Struct} arguments
/// @param {Id.Instance}   [arguments.object_instance=id] - Object Instance
/// @param {Asset.GMObject} arguments.object              - Object
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// ----------------------------------------------------------------------------
function gamemaker_objectinstance_is_instanceof(parameters = {}) {
    var _instance  = parameters[$ "instance"];
    var _object    = parameters[$ "object"];
    // Check if the given object_instance is an instance of the given object.
    if (_object_instance.object_index == _object) { return true }
    // Check if the given object_instance is an instance of a child of the given object.
    return gamemaker_object_is_instanceof({ object : _object_instance.object_index, parent : _object })
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――― FUNCTIONS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function GameMakerObjectInstance() constructor {

    static exists = function(parameters = {}) {
        parameters.instance = self;
        return gamemaker_objectinstance_exists(parameters);
    };

    static create = function(parameters = {}) {

    };

    static destroy = function(parameters = {}) {
        parameters.instance = self;
        gamemaker_objectinstance_destroy(parameters);
        return self;
    };

    static get_visible = function(parameters = {}) {
        parameters.instance = self;
        return object_instance.visible
    };

    static set_visible = function(parameters = {}) {
        parameters.instance = self;
        object_instance.visible = arguments.visible
        return self
    };
    
    static get_x_position = function(parameters = {}) {
        parameters.instance = self;
        return gamemaker_objectinstance_get_x_position(parameters);
    };
    
    static get_y_position = function(parameters = {}) {
        parameters.instance = self;
        return gamemaker_objectinstance_get_y_position(parameters);
    };

    static set_position = function(parameters = {}) {
        parameters.instance = self;
        gamemaker_objectinstance_set_position(parameters);
        return self;
    };

    static is_instanceof = function(parameters = {}) {
        parameters.instance = self;
        gamemaker_objectinstance_is_instanceof(parameters);
    };
    
    static execute_parentevent = function(parameters) {
        parameters.instance = self;
        gamemaker_objectinstance_execute_parentevent(parameters);
        return self;
    };

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――