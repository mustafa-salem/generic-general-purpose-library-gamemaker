/******************************************************************************/
#region    –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} construct
/// <parameter_description>
/// @parameter {type} [x_position]
/// <parameter_description>
/// @parameter {type} [y_position]
/// <parameter_description>
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_construct_instance_create(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_construct_instance_get(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @function gamemaker_construct_instance_destroy(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// This function is used to destroy construct instances.
/// ----------------------------------------------------------------------------
/// @parameter {struct} parameters
///
/// @parameter {type} parameters.instance
/// <parameter_description>
///
/// @parameter {type} parameters.parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_construct_instance_destroy(parameters) {
    return undefined
}

/// ----------------------------------------------------------------------------
/// @function function_name(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
///
/// ----------------------------------------------------------------------------
/// @return {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function construct_instance_execute_parent_event(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @function construct_instance_get_object_instance(parameters)
/// ----------------------------------------------------------------------------
function construct_instance_get_object_instance(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @function construct_instance_get_object_instance_handle(parameters)
/// ----------------------------------------------------------------------------
function construct_instance_get_object_instance_handle(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// @parameter {type} collidee
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function construct_instance_collision(parameters = {}) {
    return undefined
}

/// ----------------------------------------------------------------------------
/// @description
/// This function returns true if and only if instance is a construct instance
/// and an instance of the provided construct(s).
/// ----------------------------------------------------------------------------
/// @parameter {type} instance
/// <parameter_description>
/// @parameter {type} construct
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {boolean}
/// ----------------------------------------------------------------------------
function gamemaker_construct_instance_is_instanceof(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// @parameter {type} [x]
/// <parameter_description>
/// @parameter {type} [y]
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_construct_instance_set_position(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} instance
/// <parameter_description>
/// @parameter {boolean} visible
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @return {undefined}
/// ----------------------------------------------------------------------------
function gamemaker_construct_instance_set_visible(parameters = {}) {
    return undefined
}

/******************************************************************************/
#endregion –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/

function ConstructInstance() constructor {

    /// @type {struct}
    ///
    self.private = {}

    self.collision = function() {

    }

    self.execute_parent_event = function() {

    }

    self.get_object_instance = construct_instance_get_object_instance

    self.get_object_instance_handle = construct_instance_get_object_instance_handle

    static is_instanceof = function(parameters = {}) {
        parameters.instance = self
        return gamemaker_construct_instance_is_instanceof(parameters)
    }
    self.is_instanceof = method(self, is_instanceof)

    static set_position = function(parameters = {}) {
        parameters.instance = self
        gamemaker_construct_instance_set_position(parameters)
        return self
    }
    self.set_position = method(self, set_position)

}

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/
