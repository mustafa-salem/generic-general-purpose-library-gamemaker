/*******************************************************************************/
#region    ―――――――――――――――――――― INITIALIZED_CONSTRUCTOR ――――――――――――――――――――
/*******************************************************************************/

#macro ARRAY_GENERIC INITIALIZED_CONSTRUCTOR(GameMakerArray)

ARRAY_GENERIC

/*******************************************************************************/
#endregion ―――――――――――――――――――― INITIALIZED_CONSTRUCTOR ――――――――――――――――――――
/*******************************************************************************/

/*******************************************************************************/
#region    ―――――――――――――――――――― ABBREVIATIONS ――――――――――――――――――――
/*******************************************************************************/

#macro Array GameMakerArray
#macro ARRAY ARRAY_GENERIC

#macro get_element_array    get_element_array_generic
#macro exists_element_array exists_element_array_generic

/*******************************************************************************/
#endregion ―――――――――――――――――――― ABBREVIATIONS ――――――――――――――――――――
/*******************************************************************************/


/// This script function serves as a proxy for the static method function:
/// GameMakerArray.get_element
function get_element_array_generic(arguments = {}) {
    return ARRAY_GENERIC.get_element(arguments)
}

/// This script function serves as a proxy for the static method function:
/// GameMakerArray.exists_element
function exists_element_array_generic(arguments = {}) {
    return ARRAY_GENERIC.exists_element(arguments)
}

class GameMakerArray {

    /// 
    /// @param {Struct} arguments
    /// @param {Type} arguments.array
    /// @param {Type} arguments.index
    /// @returns {type}
    static get_element = function(arguments = {}) {
        return arguments.array[arguments.index]
    }

    /// 
    /// @param {Struct} arguments
    /// @param {Type} arguments.array
    /// @param {Type} arguments.index
    /// @returns {Bool}
    static exists_element = function(arguments = {}) {
        return arguments.index < 0 or arguments.index >= array_length(arguments.array)
    }

}
