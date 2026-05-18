// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/*******************************************************************************/
#region    ―――――――――――――――――――― INITIALIZED_CONSTRUCTOR ――――――――――――――――――――
/*******************************************************************************/

/// 
#macro CONSTRUCTOR_INITIALIZATION_GUARD                                 \
if (other == static_get(__INITIALIZED_CONSTRUCTOR_GENERIC)) {           \
    return undefined;                                                   \
}

/// 
#macro INITIALIZED_CONSTRUCTOR __INITIALIZED_CONSTRUCTOR_GENERIC

/// Makes sure the provided constructor is initialised before returning
/// its static struct.
/// ----------------------------------------------------------------------------
/// @param {Function} constructor
///
/// @returns {Struct|Undefined}
function __INITIALIZED_CONSTRUCTOR_GENERIC(_constructor) {
    static is_initialised = {}
    if (is_initialised[$ script_get_name(_constructor)] != true) {
        is_initialised[$ script_get_name(_constructor)]  = true
        with (static_get(__INITIALIZED_CONSTRUCTOR_GENERIC)) {
            new _constructor()
        }
    }
    return static_get(_constructor)
}

/*******************************************************************************/
#endregion ―――――――――――――――――――― INITIALIZED_CONSTRUCTOR ――――――――――――――――――――
/*******************************************************************************/

/*******************************************************************************/
#region    ―――――――――――――――――――― CONSTRUCTOR_INITIALIZATION_CODE ――――――――――――――――――――
/*******************************************************************************/

#macro CONSTRUCTOR_INITIALIZATION_CODE                                     \
static ____CONSTRUCTOR_INITIALIZATION_CODE = __CONSTRUCTOR_INITIALIZATION_CODE

function __CONSTRUCTOR_INITIALIZATION_CODE(_initialization_code) {
    _initialization_code()
}

/*******************************************************************************/
#endregion ―――――――――――――――――――― CONSTRUCTOR_INITIALIZATION_CODE ――――――――――――――――――――
/*******************************************************************************/

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― SCRIPT_FUNCTIONS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// This script function serves as a proxy for the static method function:
/// StructGeneric.remove_variable
function remove_variable_struct_generic(arguments = {}) {
    return STRUCT_GENERIC.remove_variable(arguments)
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――― SCRIPT_FUNCTIONS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― CONSTRUCTOR ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

class StructGeneric {

    /// ----------------------------------------------------------------------------
    ///
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    ///
    /// @param {Type} arguments.struct
    /// <parameter_description>
    ///
    /// @param {Type} arguments.name
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static remove_variable = function(arguments = {}) {
        if (arguments.struct == undefined or !is_struct(arguments.struct)) {
            return undefined;
        }
        if (_name == undefined or !is_string(arguments.name)) {
            return undefined;
        }
        if (struct_exists(arguments.struct, arguments.name)) { struct_remove(arguments.struct, arguments.name) }
    }

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――― CONSTRUCTOR ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
