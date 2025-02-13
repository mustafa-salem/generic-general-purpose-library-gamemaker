/// @function function_name(arguments)
/// @description <function_description>
/// @parameter {Struct} arguments <parameter_description>
function BufferGeneric(arguments = {}) constructor {

    /// @function function_name(arguments)
    /// @description <function_description>
    /// @parameter {Struct} arguments <parameter_description>
    /// @return {type} <return_description>
    exists = function(arguments = {}) {
        arguments.buffer = self
        return gamemaker_buffer_exists(arguments)
    }

    /// @function function_name(arguments)
    /// @description <function_description>
    /// @parameter {Struct} arguments <parameter_description>
    /// @return {type} <return_description>
    delete = function(arguments = {}) {
        arguments.buffer = self
        gamemaker_buffer_delete(arguments)
    }

    /// @function function_name(arguments)
    /// @description <function_description>
    /// @parameter {Struct} arguments <parameter_description>
    /// @return {type} <return_description>
    read = function(arguments = {}) {
        arguments.buffer = self
        gamemaker_buffer_read(arguments)
    }

    /// @function function_name(arguments)
    /// @description <function_description>
    /// @parameter {Struct} arguments <parameter_description>
    /// @return {type} <return_description>
    write = function(arguments = {}) {
        arguments.buffer = self
        gamemaker_buffer_write(arguments)
    }

}
