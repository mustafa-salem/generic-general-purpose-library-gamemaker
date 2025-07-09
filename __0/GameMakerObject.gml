/******************************************************************************/
#region    –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// 
/// ----------------------------------------------------------------------------
#macro GAMEMAKER_OBJECT_EVENTSCRIPTCONTENTS __function_VWOXH6QC()

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– INITIALIZATION ––––––––––––––––––––
/******************************************************************************/

/// library namespace
global[$ "#gamemaker"] ??= {};

/// my namespace
global[$ "#gamemaker"][$ "object"] = {};

///
global[$ "#gamemaker"][$ "object"][$ "objects"] = {};

var _instances = global[$ "#gamemaker"][$ "object"][$ "objects"];
for (var i = 0; i < 9999; i++) {
    if (not object_exists(i)) {
        break;
    }
    _instances[$ i] = new GameMakerObject();
    _instances[$ i][$ "#handle"] = i;
    /// asset_get_ids(asset_object)
}

/******************************************************************************/
#endregion –––––––––––––––––––– INITIALIZATION ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// 
/// ----------------------------------------------------------------------------
function __function_VWOXH6QC() {
    ///
    static _event_names = new (function() constructor {
        self[$ ev_create]                 = {};
        self[$ ev_create][$ 0]            = "create_event";
        self[$ ev_destroy]                = {};
        self[$ ev_destroy][$ 0]           = "destroy_event";
        self[$ ev_cleanup]                = {};
        self[$ ev_cleanup][$ 0]           = "cleanup_event";
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
    gamemaker_object(object_index)
    .trigger_event({ event : _event_names[$ event_type][$ event_number] });
}

function __GameMakerObject_get_visible() {
    return undefined;
}

function __GameMakerObject_set_visible() {
    return self;
}

/******************************************************************************/
#endregion –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/// @description
/// This function returns the 'Object' struct instance associated with the targeted object. In case of failure 'undefined' is returned instead. 'object_exists'
/// @param {any} argument0
/// The value identifying the object to target.
/// @returns {struct.Object|undefined}
/// <return_description>
function gamemaker_object(argument0) {
    var _object = gamemaker_object_handle(argument0);
    if (_object == undefined) {
        return undefined;
    }
    return Object.private.objects[_object];
}

function gamemaker_object_handle(parameters = {}) {
    return _return
}

function gamemaker_object_create_instance(parameters = {}) {
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

function gamemaker_object_get_visible(parameters = {}) {
    var _object = parameters[$ "object"];
    return object_get_visible(_object);
}

function gamemaker_object_set_visible(parameters = {}) {
    var _object  = parameters[$ "object"];
    var _visible = parameters[$ "visible"];
    object_set_visible(_object, _visible);
    return undefined;
}

function gamemaker_object_get_parent(parameters = {}) {
    parameters.object = self;
    var _object = parameters[$ "object"];
    return object_get_parent(_object);
}

function gamemaker_object_is_instanceof(parameters = {}) {
    var _object = parameters[$ "object"];
    var _parent = parameters[$ "parent"];
    return object_is_ancestor(_object, _parent);
}

function gamemaker_object_attach_eventhandler(parameters = {}) {

}

function gamemaker_object_trigger_event(parameters = {}) {

}

/******************************************************************************/
#endregion –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/

/// object_exists
/// get_id
/// get_depth
/// set_depth
/// get
/// set_event
/// get_eventmethod
/// set_default_event
/// execute_default_event

function GameMakerObject() constructor {

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

    self.get_handle          = method(self, get_handle);
    self.get_parent          = method(self, get_parent);
    self.is_instanceof       = method(self, is_instanceof);
    self.get_persistent      = method(self, get_persistent);
    self.set_persistent      = method(self, set_persistent);
    self.get_solid           = method(self, get_solid);
    self.set_solid           = method(self, set_solid);
    self.get_physics         = method(self, get_physics);
    self.get_visible         = method(self, get_visible);
    self.set_visible         = method(self, set_visible);
    self.get_sprite          = method(self, get_sprite);
    self.set_sprite          = method(self, set_sprite);
    self.get_mask            = method(self, get_mask);
    self.set_mask            = method(self, set_mask);
    self.attach_eventhandler = method(self, attach_eventhandler);
    self.trigger_event       = method(self, trigger_event);

}

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/