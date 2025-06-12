/******************************************************************************/
#region    –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/******************************************************************************/

#macro GAMEMAKER_OBJECT_DEFAULT_DEPTH 0

/// ----------------------------------------------------------------------------
/// @description
///
/// PURPOSE
/// Calls the callable associated with the object event of the event script that
/// it is placed in from the instance of Object that is associated with
/// the object of the executing object instance.
///
/// USAGE
/// Must be included in all event scripts of objects that should derive the
/// code executed for their objects events from their instance of Object.
///
/// ----------------------------------------------------------------------------
#macro GAMEMAKER_OBJECT_EVENTSCRIPTCONTENTS_CREATE                             \
gamemaker_object_get_eventmethod({ object : object_index, event : "create_event" })()

#macro GAMEMAKER_OBJECT_EVENTSCRIPTCONTENTS_CLEANUP                            \
gamemaker_object_get_eventmethod({ object : object_index, event : "cleanup_event" })()

#macro GAMEMAKER_OBJECT_EVENTSCRIPTCONTENTS_STEP                               \
gamemaker_object_get_eventmethod({ object : object_index, event : "step_event" })()

#macro GAMEMAKER_OBJECT_EVENTSCRIPTCONTENTS_DRAW                               \
gamemaker_object_get_eventmethod({ object : object_index, event : "draw_event" })()

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// @description
/// 'object_get_parent'
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function function_name(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// 'object_is_ancestor'
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function function_name(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// 'object_get_persistent'
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function function_name(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// 'object_set_persistent'
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function function_name(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// 'object_get_sprite'
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function function_name(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// 'object_set_sprite'
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function function_name(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// 'object_get_mask'
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function function_name(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// 'object_set_mask'
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function function_name(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// 'object_get_visible'
/// ----------------------------------------------------------------------------
/// @parameter {type} object
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {boolean}
/// ----------------------------------------------------------------------------
function gamemaker_object_get_visible(parameters = {}) {
    return object_get_visible(_object)
}

/// ----------------------------------------------------------------------------
/// @description
/// 'object_set_visible'
/// ----------------------------------------------------------------------------
/// @parameter {type} object
/// <parameter_description>
/// @parameter {boolean} visible
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_object_set_visible(parameters = {}) {
    object_set_visible(_object, _visible)
    return undefined
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_object_set_event(parameters) {
    for (var i = 0; i < ; i++) {
        .set_default_event(parameters)
    }
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_object_get_eventmethod(parameters) {
    return _return
}

/******************************************************************************/
#endregion –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/

function Object() : AssetGeneric() constructor {

    /// @type {struct}
    ///
    static private = {

    }

    static get_id = function(parameters = {}) {
        return private.id
    }

    get_handle = function(parameters = {}) {
        return private.handle
    }

    static get = function(parameters = {}) {
        return self
    }

    static get_depth = function(arguments) {
        return _return
    }

    static set_depth = function(arguments) {
        var _object = get({ object : object })
        var _depth  = arguments.depth
        _object.private.depth = _depth
    }

    get_visible = function(parameters = {}) {
        parameters.object = self
        return gamemaker_object_get_visible(parameters)
    }

    set_visible = function(parameters = {}) {
        parameters.object = self
        gamemaker_object_set_visible(parameters)
        return self
    }

    set_event = function(parameters = {}) {
        parameters.object = self
        gamemaker_object_set_event(parameters)
        return self
    }

    get_eventmethod = function(parameters = {}) {
        parameters.object = self
        return gamemaker_object_get_eventmethod(parameters)
    }

    static set_default_event = function(parameters) {
        private.default_events[$ parameters.event] = method(undefined, parameters.callable)
        return self
    }

    static execute_default_event = function(parameters) {
        private.default_events[$ parameters.event] = method(undefined, parameters.callable)
        return self
    }

    get_parent_object_index = function(arguments) {
        var _object_index        = arguments[$ "object_index"] ?? self.object_index
        var _parent_object_index = arguments.parent_object_index
    
        return object_get_parent(_object_index)
    }

    /// ----------------------------------------------------------------------------
    /// @function is_child_of(arguments)
    /// ----------------------------------------------------------------------------
    /// @description This function returns whether the given object is a direct or
    /// indirect child of the given parent_object.
    /// ----------------------------------------------------------------------------
    /// @parameter {Struct} arguments
    /// @parameter {Asset.GMObject} [arguments.object=object_index] - Object
    /// @parameter {Asset.GMObject}  arguments.parent_object        - Parent Object
    /// ----------------------------------------------------------------------------
    /// @returns {boolean}
    /// ----------------------------------------------------------------------------
    is_child_of = function(arguments) {
        var _object        = arguments[$ "object"] ?? object_index
        var _parent_object = arguments.parent_object

        var _object_index = _object

        // go up the inheritance tree
        while (_object_index >= 0) {
            var _object_index = object_get_parent(_object_index)
            if (_object_index == _parent_object) { return true }
        }

        return false
    }

}

function ObjectConstructor() constructor {

    static define_event = function(arguments = {}) {

        return _return
    }

    static define_default_event = function(arguments) {
        return _return
    }
    
}

function GameMakerObject () constructor {
    
}

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/