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

    /// ----------------------------------------------------------------------------
    /// Tags
    /// ----------------------------------------------------------------------------

    /// ----------------------------------------------------------------------------
    /// @description
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @returns {array<string>}
    /// <description>
    /// ----------------------------------------------------------------------------
    static get_tags = function() {
        var _tags = private.tags
        return _tags
    }

    /// ----------------------------------------------------------------------------
    /// @description
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @param {struct} parameters
    /// The struct containing the arguments to pass to the function.
    /// @param {array<string>} parameters.tags
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @returns {struct.ConstructInstance} self
    /// ----------------------------------------------------------------------------
    static set_tags = function(parameters = {}) {
        return self
    }

    /// ----------------------------------------------------------------------------
    /// @description
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @param {struct} parameters
    /// The struct containing the arguments to pass to the function.
    /// @param {array<string>} parameters.tags
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @returns {struct.ConstructInstance} self
    /// ----------------------------------------------------------------------------
    static add_tags = function(parameters = {}) {
        return self
    }

    /// ----------------------------------------------------------------------------
    /// @description
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @param {struct} parameters
    /// The struct containing the arguments to pass to the function.
    /// @param {array<string>} parameters.tags
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @returns {struct.ConstructInstance} self
    /// ----------------------------------------------------------------------------
    static remove_tags = function(parameters = {}) {
        return self
    }

    /// ----------------------------------------------------------------------------
    /// @description
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @param {struct} parameters
    /// The struct containing the arguments to pass to the function.
    /// @param {array<string>} parameters.tags
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @returns {boolean}
    /// <description>
    /// ----------------------------------------------------------------------------
    static has_tags = function(parameters = {}) {
        var _has_tags = false
        return _has_tags
    }

    /// ----------------------------------------------------------------------------
    /// @description
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @param {struct} parameters
    /// The struct containing the arguments to pass to the function.
    /// @param {array<string>} parameters.tags
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @returns {boolean}
    /// <description>
    /// ----------------------------------------------------------------------------
    static hasany_tag = function(parameters = {}) {
        var _hasany_tag = false
        return _hasany_tag
    }

    /// ----------------------------------------------------------------------------
    /// @description
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @param {struct} parameters
    /// The struct containing the arguments to pass to the function.
    /// @param {array<string>} parameters.tags
    /// <description>
    /// ----------------------------------------------------------------------------
    /// @returns {number}
    /// <description>
    /// ----------------------------------------------------------------------------
    static get_tagcount = function(parameters = {}) {
        var _tagcount = 0
        return _tagcount
    }

    /// ----------------------------------------------------------------------------
    /// Events
    /// ----------------------------------------------------------------------------
    self[$ "#eventhandlers"] = variable_clone(get_construct()[$ "#eventhandlers"])

    trigger_event    = method(self, Construct.trigger_event)
    attach_eventhandler = method(self, Construct.get_eventhandler)
    attach_eventhandler = method(self, Construct.attach_eventhandler)

}

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/
