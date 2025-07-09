function ArrayGeneric() constructor {

    /// ----------------------------------------------------------------------------
    /// @function get_element(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    ///
    /// @param {Type} arguments.array
    /// <parameter_description>
    ///
    /// @param {Type} arguments.index
    /// <parameter_description>
    ///
    /// @param {Type} arguments.parameter_name
    /// <parameter_description>
    ///
    /// @param {Type} arguments.parameter_name
    /// <parameter_description>
    ///
    /// ----------------------------------------------------------------------------
    /// @returns {type}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static get_element = function(arguments = {}) {
        return arguments.array[arguments.index]
    }

    /// ----------------------------------------------------------------------------
    /// @function exists_element(arguments)
    /// ----------------------------------------------------------------------------
    /// @description
    /// <function_description>
    /// ----------------------------------------------------------------------------
    /// @param {Struct} arguments
    ///
    /// @param {Type} arguments.array
    /// <parameter_description>
    ///
    /// @param {Type} arguments.index
    /// <parameter_description>
    /// ----------------------------------------------------------------------------
    /// @returns {boolean}
    /// <return_description>
    /// ----------------------------------------------------------------------------
    static exists_element = function(arguments = {}) {
        return arguments.index < 0 or arguments.index >= array_length(arguments.array)
    }

}
