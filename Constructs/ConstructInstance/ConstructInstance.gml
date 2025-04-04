/******************************************************************************/
#region    –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

function gamemaker_constructinstance_get_object_instance(parameters = {}) {
    return _return
}

function gamemaker_constructinstance_get_object_instance_handle(parameters = {}) {
    return _return
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

    self.get_object_instance = gamemaker_constructinstance_get_object_instance

    self.get_object_instance_handle = gamemaker_constructinstance_get_object_instance_handle

    static is_instanceof = function(parameters = {}) {
        parameters.instance = self
        return gamemaker_constructinstance_is_instanceof(parameters)
    }
    self.is_instanceof = method(self, is_instanceof)

    static set_position = function(parameters = {}) {
        parameters.instance = self
        gamemaker_constructinstance_set_position(parameters)
        return self
    }
    self.set_position = method(self, set_position)

}

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/
