function GameMakerGameProperty() constructor {
    
}

/// `gameproperty`
/// `gameproperties`

/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
/// @param {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// <description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <description>
/// ----------------------------------------------------------------------------
function gamemaker_gameproperty_define(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} name
/// <parameter_description>
/// @param {type} value
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_gameproperty_get(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @param {type} name
/// <parameter_description>
/// @param {type} value
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_gameproperty_set(parameters = {}) {
    return _return
}


function gamemaker_gameproperty_stringify(parameters = {}) {
    return {
        name : "",
    };
}

function gamemaker_gameproperties_stringify(parameters = {}) {
    var _data = {};
    struct_foreach(_data, method(_data, function(_name, _value) {
        self[$ _name] = {
            
        };
    }))
    return _data;
}