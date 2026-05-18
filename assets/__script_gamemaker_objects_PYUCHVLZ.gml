#macro GAMEMAKER_OBJECT_EVENTSCRIPTCONTENTS __function_VWOXH6QC()

function __gamemaker_object_context() {
    static __context = (function() {
        var _objecthandles = asset_get_ids(asset_object);
        for (let i = 0; i < array_length(_objecthandles); i++) {
            var _object = new GameMakerObject();
            _object[$ "#handle"] = _objecthandles[i];
            global[$ "#gamemaker"][$ "objects"][$ "assets"][$ i] = _object;
        }
        return global[$ "#gamemaker"][$ "objects"];
    })();
    return __context;
}

function __function_VWOXH6QC() {
    ///
    static _event_names = new (function {
        self[$ ev_create]                 = {};
        self[$ ev_create][$ 0]            = "Create Event";
        self[$ ev_destroy]                = {};
        self[$ ev_destroy][$ 0]           = "Destroy Event";
        self[$ ev_cleanup]                = {};
        self[$ ev_cleanup][$ 0]           = "Clean Up Event";
        self[$ ev_step]                   = {};
        self[$ ev_step][$ ev_step_normal] = "";
        self[$ ev_step][$ ev_step_begin]  = "";
        self[$ ev_step][$ ev_step_end]    = "";
        self[$ ev_other]                  = {};
        self[$ ev_other][$ ev_game_start] = "";
        self[$ ev_other][$ ev_game_end]   = "";
        self[$ ev_other][$ ev_room_start] = "";
        self[$ ev_other][$ ev_room_end]   = "";
        self[$ ev_draw]                   = {};
        self[$ ev_draw][$ ev_draw_normal] = "";
        self[$ ev_draw][$ ev_draw_begin]  = "";
        self[$ ev_draw][$ ev_draw_end]    = "";
        self[$ ev_draw][$ ev_draw_pre]    = "";
        self[$ ev_draw][$ ev_draw_post]   = "";
        self[$ ev_draw][$ ev_gui]         = "";
        self[$ ev_draw][$ ev_gui_begin]   = "";
        self[$ ev_draw][$ ev_gui_end]     = "";
    })();
    ///
    gamemaker_object(object_index).trigger_event(_event_names[$ event_type][$ event_number]);
    return undefined;
}

/// This function returns the `Object` struct instance associated with the targeted object. In case of failure `undefined` is returned instead.
/// 'object_exists'
/// @param {any} argument0
/// The value identifying the object to target.
/// @returns {Struct|Undefined}
function gamemaker_object(argument0) {
    var _object = gamemaker_object_handle(argument0);
    if (_object == undefined) {
        return undefined;
    }
    return Object.private.objects[_object];
}
/// @returns {Real|Undefined}
function gamemaker_object_handle(argument0) {
    return _return
}
/// @returns {Real|Undefined}
function gamemaker_objectinstancehandle(argument0) {
    return _return
}

/// Gets the handle of the targeted object.
/// ---
/// `parameters.object` The 'Object' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real|Undefined}
function gamemaker_object_get_handle(parameters) {
    var _object = parameters.object;
    return _return
}

/// Gets the name of the targeted object.
/// ---
/// `parameters.object` The 'Object' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {String}
function gamemaker_object_get_name(parameters) {
    var _object = parameters.object;
    return "";
}

/// Gets the number of active instance of an object in the room.
/// ---
/// `parameters.object` The 'Object' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_object_get_instancecount(parameters) {
    var _object = parameters.object;
    return _return
}

/// Gets an array of the instances of the targeted object.
/// ---
/// `parameters.object` The 'Object' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Array<Struct>}
function gamemaker_object_get_instances(parameters) {
    var _object = parameters.object;
    var _object_handle = gamemaker_object(parameters.object)
    var _instances = []
    for (let i = 0; i < instance_number(_object_handle); i++) {
        var _instance = instance_find(_object_handle, i)
        if (_instance == noone) { break }
        array_push(_instances, _instance)
    }
    return _instances
}

/// Checks whether the targeted 'Object Instance' is an instance of the targeted **Object**.
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// `parameters.object` The 'Object' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Bool}
function gamemaker_objectinstance_is_instanceof(parameters) {
    var _instance = parameters.instance;
    var _object   = parameters.object;
    /// the object index of the instance is the same; or it is the same as one in the parent chain
    var _child  = _instance.get_object().get_handle();
    var _parent = _object.get_handle();
    return ((_child == _parent) or (object_is_ancestor(_child, _parent)));
}

/// Creates a new instance of an 'Object'.
/// ---
/// `parameters.object` The 'Object' to target.
/// `parameters.`
/// `parameters.`
/// `parameters.`
/// `parameters.`
/// `parameters.`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Struct}
function gamemaker_object_instantiate(parameters) {
    var _object        = parameters[$ "object"];
    var _x_position    = parameters[$ "x"] ?? 0;
    var _y_position    = parameters[$ "y"] ?? 0;
    var _depth         = parameters[$ "depth"] ?? 0;
    var _layer         = parameters[$ "layer"];
    var _variables     = parameters[$ "variables"] ?? {};
    if (_layer != undefined) {
        return instance_create_layer(_x_position, _y_position, _layer, _object, _variables);
    } else {
        return instance_create_depth(_x_position, _y_position, _depth, _object, _variables);
    }
}

/// Checks whether the 'Object' is visible.
/// ---
/// `parameters.object` The 'Object' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Bool}
function gamemaker_object_get_visible(parameters) {
    var _object = parameters.object;
    return object_get_visible(_object);
}

/// `Object Asset`
/// ---
/// `parameters.object` The 'Object' to target.
/// `parameters.visible`
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_object_set_visible(parameters) {
    var _object  = parameters.object;
    var _visible = parameters.visible;
    object_set_visible(_object, _visible);
    return undefined;
}

/// If possible, gets the 'parent' of the targeted 'Object'; otherwise, returns 'undefined'.
/// ---
/// `parameters.object` The 'Object' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Struct|Undefined}
function gamemaker_object_get_parent(parameters) {
    var _object  = parameters.object;
    return object_get_parent(_object);
}

/// 
/// ---
/// `parameters.object` The 'Object' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Bool}
function gamemaker_object_is_instanceof(parameters) {
    var _object = parameters.object;
    var _parent = parameters.parent;
    return object_is_ancestor(_object, _parent);
}

/// Attaches an event handler to the targeted 'Object'.
/// ---
/// `parameters.object` The 'Object' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_object_attach_eventhandler(parameters) {
    var _object = parameters.object;
    var _event  = parameters.event;
    var handler = parameters.handler;
    return undefined;
}

/// Triggers an event on the targeted 'Object'.
/// ---
/// `parameters.object` The 'Object' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_object_trigger_event(parameters) {
    var _object = parameters.object;
    var _event  = parameters.event;
    return undefined;
}

/// Destroys the targeted 'Object Instance', removing them from the game.
/// ---
/// **NOTE:** Immediately triggers the 'Destroy Event' of the instance, then, triggers the 'Clean Up Event' of the instance.
/// **NOTE:** If the targeted 'Object Instance' is executing the current event, then that Event will be completed, before that 'Object Instance' is removed completely.
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_objectinstance_destroy(parameters) {
    var _instance = parameters.instance;
    var _execute_event = parameters[$ "execute_event"]
    for (let i = 0; i < array_length(_instances); i++) {
        if (instance_exists(_instances[i])) {
            instance_destroy(_instances[i], true);
        }
    }
    return undefined;
}

/// Checks whether the targeted object instance exists.
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Bool}
function gamemaker_objectinstance_exists(parameters) {
    var _instance = parameters.instance;
    return instance_exists(_instance);
}

/// Sets the targeted 'Object Instance' to a position.
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_objectinstance_set_position(parameters) {
    var _instance = parameters.instance;
    var _x        = parameters.x;
    var _y        = parameters.y;

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

/// Gets the 'Object' that the targeted 'Object Instance' is an instance of.
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Struct|Undefined}
function gamemaker_objectinstance_get_object(parameters) {
    var _instance = parameters.instance;
    return _instance.object_index;
}

// gamemaker_objectinstance_getImagePosition
// gamemaker_objectinstance_getImageXPosition
// gamemaker_objectinstance("").get_image_yposition({ alignment: 0 })

/// Gets the x position of the the targeted 'Object Instance'.
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_objectinstance_get_x_position(parameters) {
    var _instance = parameters.instance;
    return _instance.x;
}

/// Gets the y position of the the targeted 'Object Instance'.
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_objectinstance_get_y_position(parameters) {
    var _instance = parameters.instance;
    return _instance.y;
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_objectinstance_get_x_dimension(parameters) {
    var _instance = parameters.instance;
    return _instance.sprite_width;
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_objectinstance_get_y_dimension(parameters) {
    var _instance = parameters.instance;
    return _instance.sprite_height;
}
/// `parameters.instance` The 'Object Instance' to target.
/// y_position
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// The y position to use as a basis for the depth sorting algorithm.
function gamemaker_objectinstance_depthsort(parameters) {
    var _instance = parameters.instance;
    var _object_instance = parameters.object_instance
    _object_instance.depth = 8000 - room_height / 2 + _object_instance.y + _object_instance.sprite_height - _object_instance.sprite_yoffset
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_objectinstance_get_boundingbox_position(parameters) {
    var _instance = parameters.instance;
    return {
        x: gamemaker_objectinstance_get_boundingbox_x_position(parameters),
        y: gamemaker_objectinstance_get_boundingbox_y_position(parameters),
    };
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_objectinstance_get_boundingbox_x_position(parameters) {
    var _instance = parameters.instance;
    return self.bbox_left
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_objectinstance_get_boundingbox_y_position(parameters) {
    var _instance = parameters.instance;
    return self.bbox_top
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_objectinstance_get_boundingbox_x_dimension(parameters) {
    return self.bbox_right - self.bbox_left
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_objectinstance_get_boundingbox_y_dimension(parameters) {
    var _instance = parameters.instance;
    return self.bbox_bottom - self.bbox_top
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Bool}
function gamemaker_objectinstance_is_in_sequence(parameters) {
    var _instance = parameters.instance;
    var _handle
    return _handle.in_sequence
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Struct|Undefined}
function gamemaker_objectinstance_get_sequence_instance(parameters) {
    var _instance = parameters.instance;
    var _handle
    return _handle.sequence_instance
}

/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_objectinstance_execute_parentevent(parameters) {
    var _instance = parameters.instance;
    return undefined;
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// {type} object_instance
/// flash_colour
/// flash_alpha
/// [shader]
/// The shader to use while drawing.
/// {Struct} [shader_variables]
/// The variables to pass to the shader.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_objectinstance_draw(parameters) {
    var _instance = parameters.instance;
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
    return undefined;
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_objectinstance_move_and_collide(parameters) {
    var _instance = parameters.instance;
    with (_instance) {
        move_and_collide(_x_distance, _y_distance, _collidables);
    }
    return undefined;
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_objectinstance_set_creationcode(parameters) {
    var _instance = parameters.instance;
    return undefined;
}

/// object_exists
/// get_id
/// get_depth
/// set_depth
/// get
/// set_event
/// get_eventmethod
/// set_default_event
/// execute_default_event

class GameMakerObject {

    static get_handle = function(parameters = {}) {
        return private.handle;
    };

    static get_parent = function(parameters = {}) {
        parameters.object = self;
        return gamemaker_object_get_parent(parameters);
    };

    static is_instanceof = function(parameters = {}) {
        parameters.object = self;
        return gamemaker_object_is_instanceof(parameters);
    };

    static get_persistent = function(parameters = {}) {
        parameters.object = self;
        /// object_get_persistent
    };

    static set_persistent = function(parameters = {}) {
        parameters.object = self;
        /// object_set_persistent
        return self;
    };

    static get_solid = function(parameters = {}) {
        parameters.object = self;
        /// object_get_solid
    };

    static set_solid = function(parameters = {}) {
        parameters.object = self;
        /// object_set_solid
        return self;
    };

    static get_physics = function(parameters = {}) {
        parameters.object = self;
        /// object_get_physics
    };

    static get_visible = function(parameters = {}) {
        parameters.object = self;
        return gamemaker_object_get_visible(parameters)
    };

    static set_visible = function(parameters = {}) {
        parameters.object = self;
        gamemaker_object_set_visible(parameters);
        return self;
    };

    static get_sprite = function(parameters = {}) {
        parameters.object = self;
        /// object_get_sprite
    };

    static set_sprite = function(parameters = {}) {
        parameters.object = self;
        /// object_set_sprite
        return self;
    };

    static get_mask = function(parameters = {}) {
        parameters.object = self;
        /// object_get_mask
    };

    static set_mask = function(parameters = {}) {
        parameters.object = self;
        /// object_set_mask
        return self;
    };

    static attach_eventhandler = function(parameters = {}) {
        parameters.object = self;
        return gamemaker_object_attach_eventhandler(parameters)
    };

    static trigger_event = function(parameters = {}) {
        parameters.object = self;
        return gamemaker_object_trigger_event(parameters)
    };

    var _method = ["get_handle", "get_parent", "is_instanceof", "get_persistent", "set_persistent", "get_solid", "set_solid", "get_physics", "get_visible", "set_visible", "get_sprite", "set_sprite", "get_mask", "set_mask", "attach_eventhandler", "trigger_event"];
    for (let i = 0; i < array_length(_method); i++) {
        var _name = _method[i];
        var _static_method = static_get(self)[$ _name];
        self[$ _name] = method(self, _static_method);
    }

}

class GameMakerObjectInstance {

    static get_handle = function(parameters = {}) {
        return private.handle;
    };

    static get_object = function() {
        return get_handle().object_index;
    };

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