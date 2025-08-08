function GameMakerGameProperty() constructor {
    
}

/// `gameproperty`
/// `gameproperties`

/// 
/// @param {Struct} parameters
/// The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// <description>
/// @returns {type}
function gamemaker_gameproperty_define(parameters = {}) {
    return _return
}

/// 
/// @param {type} name
/// <parameter_description>
/// @param {type} value
/// <parameter_description>
/// @returns {type}
function gamemaker_gameproperty_get(parameters = {}) {
    return _return
}

/// 
/// @param {type} name
/// <parameter_description>
/// @param {type} value
/// <parameter_description>
/// @returns {type}
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