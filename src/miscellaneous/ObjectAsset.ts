#macro GAMEMAKER_OBJECT_EVENTSCRIPTCONTENTS __function_VWOXH6QC()

function __gamemaker_object_context() {
    static __context = (function() {
        var _objecthandles = asset_get_ids(asset_object);
        for (let i = 0; i < _objecthandles.length; i++) {
            var _object = new GameMakerObject();
            _object["#handle"] = _objecthandles[i];
            global["#gamemaker"]["objects"]["assets"][i] = _object;
        }
        return global["#gamemaker"]["objects"];
    })();
    return __context;
}

function __function_VWOXH6QC() {
    ///
    static _event_names = new (function {
        this[ev_create]                 = {};
        this[ev_create][0]            = "Create Event";
        this[ev_destroy]                = {};
        this[ev_destroy][0]           = "Destroy Event";
        this[ev_cleanup]                = {};
        this[ev_cleanup][0]           = "Clean Up Event";
        this[ev_step]                   = {};
        this[ev_step][ev_step_normal] = "";
        this[ev_step][ev_step_begin]  = "";
        this[ev_step][ev_step_end]    = "";
        this[ev_other]                  = {};
        this[ev_other][ev_game_start] = "";
        this[ev_other][ev_game_end]   = "";
        this[ev_other][ev_room_start] = "";
        this[ev_other][ev_room_end]   = "";
        this[ev_draw]                   = {};
        this[ev_draw][ev_draw_normal] = "";
        this[ev_draw][ev_draw_begin]  = "";
        this[ev_draw][ev_draw_end]    = "";
        this[ev_draw][ev_draw_pre]    = "";
        this[ev_draw][ev_draw_post]   = "";
        this[ev_draw][ev_gui]         = "";
        this[ev_draw][ev_gui_begin]   = "";
        this[ev_draw][ev_gui_end]     = "";
    })();
    ///
    gamemaker_object(object_index).trigger_event(_event_names[event_type][event_number]);
    return;
}

/// This function returns the `Object` struct instance associated with the targeted object. In case of failure `undefined` is returned instead.
/// 'object_exists'
/// @param {any} argument0
/// The value identifying the object to target.
/// @returns {Struct|Undefined}
function gamemaker_object(argument0) {
    var _object = gamemaker_object_handle(argument0);
    if (_object == undefined) {
        return;
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
        _instances.push(_instance)
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
    var _object        = parameters["object"];
    var _x_position    = parameters["x"] ?? 0;
    var _y_position    = parameters["y"] ?? 0;
    var _depth         = parameters["depth"] ?? 0;
    var _layer         = parameters["layer"];
    var _variables     = parameters["variables"] ?? {};
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
    return;
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
    return;
}

/// Triggers an event on the targeted 'Object'.
/// ---
/// `parameters.object` The 'Object' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_object_trigger_event(parameters) {
    var _object = parameters.object;
    var _event  = parameters.event;
    return;
}

/// Destroys the targeted 'Object Instance', removing them from the game.
/// ---
/// **NOTE:** Immediately triggers the 'Destroy Event' of the instance, then, triggers the 'Clean Up Event' of the instance.
/// **NOTE:** If the targeted 'Object Instance' is executing the current event, then that Event will be completed, before that 'Object Instance' is removed completely.
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function GameObject.destroy(parameters) {

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
    return;
    /*
    var alignment = arguments["alignment"] ?? "top_left"
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
    return this.bbox_left
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_objectinstance_get_boundingbox_y_position(parameters) {
    var _instance = parameters.instance;
    return this.bbox_top
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_objectinstance_get_boundingbox_x_dimension(parameters) {
    return this.bbox_right - this.bbox_left
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Real}
function gamemaker_objectinstance_get_boundingbox_y_dimension(parameters) {
    var _instance = parameters.instance;
    return this.bbox_bottom - this.bbox_top
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
    return;
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
    parameters["sprite"]     ??= _object_instance_handle.sprite_index
    parameters["frame"]      ??= _object_instance_handle.image_index
    parameters["x_position"] ??= _object_instance_handle.x
    parameters["y_position"] ??= _object_instance_handle.y
    parameters["x_scale"]    ??= _object_instance_handle.image_xscale
    parameters["y_scale"]    ??= _object_instance_handle.image_yscale
    parameters["rotation"]   ??= _object_instance_handle.image_angle
    parameters["alpha"]      ??= _object_instance_handle.image_alpha
    parameters["colour"]     ??= _object_instance_handle.image_blend
    gamemaker_sprite_draw(parameters);
    return;
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
    return;
}

///
/// ---
/// `parameters.instance` The 'Object Instance' to target.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Undefined}
function gamemaker_objectinstance_set_creationcode(parameters) {
    var _instance = parameters.instance;
    return;
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
        parameters.object = this;
        return gamemaker_object_get_parent(parameters);
    };

    static get_persistent = function(parameters = {}) {
        parameters.object = this;
        /// object_get_persistent
    };

    static set_persistent = function(parameters = {}) {
        parameters.object = this;
        /// object_set_persistent
        return this;
    };

    static get_solid = function(parameters = {}) {
        parameters.object = this;
        /// object_get_solid
    };

    static set_solid = function(parameters = {}) {
        parameters.object = this;
        /// object_set_solid
        return this;
    };

    static get_physics = function(parameters = {}) {
        parameters.object = this;
        /// object_get_physics
    };

    static get_visible = function(parameters = {}) {
        parameters.object = this;
        return gamemaker_object_get_visible(parameters)
    };

    static set_visible = function(parameters = {}) {
        parameters.object = this;
        gamemaker_object_set_visible(parameters);
        return this;
    };

    static get_sprite = function(parameters = {}) {
        parameters.object = this;
        /// object_get_sprite
    };

    static set_sprite = function(parameters = {}) {
        parameters.object = this;
        /// object_set_sprite
        return this;
    };

    static get_mask = function(parameters = {}) {
        parameters.object = this;
        /// object_get_mask
    };

    static set_mask = function(parameters = {}) {
        parameters.object = this;
        /// object_set_mask
        return this;
    };

    static attach_eventhandler = function(parameters = {}) {
        parameters.object = this;
        return gamemaker_object_attach_eventhandler(parameters)
    };

    static trigger_event = function(parameters = {}) {
        parameters.object = this;
        return gamemaker_object_trigger_event(parameters)
    };

    var _method = ["get_handle", "get_parent", "get_persistent", "set_persistent", "get_solid", "set_solid", "get_physics", "get_visible", "set_visible", "get_sprite", "set_sprite", "get_mask", "set_mask", "attach_eventhandler", "trigger_event"];
    for (let i = 0; i < _method.length; i++) {
        var _name = _method[i];
        var _static_method = static_get(this)[_name];
        this[_name] = method(this, _static_method);
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
        parameters.instance = this;
        return gamemaker_objectinstance_exists(parameters);
    };

    static create = function(parameters = {}) {

    };

    static destroy = function(parameters = {}) {
        parameters.instance = this;
        GameObject.destroy(parameters);
        return this;
    };

    static get_visible = function(parameters = {}) {
        parameters.instance = this;
        return object_instance.visible
    };

    static set_visible = function(parameters = {}) {
        parameters.instance = this;
        object_instance.visible = arguments.visible
        return this
    };
    
    public get position() {
        // return gamemaker_objectinstance_get_x_position(parameters);
        // return gamemaker_objectinstance_get_y_position(parameters);
    }

    public set position(position: Vector2) {
        parameters.instance = this;
        gamemaker_objectinstance_set_position(parameters);
        return this;
    };
    
    static execute_parentevent = function(parameters) {
        parameters.instance = this;
        gamemaker_objectinstance_execute_parentevent(parameters);
        return this;
    };

}