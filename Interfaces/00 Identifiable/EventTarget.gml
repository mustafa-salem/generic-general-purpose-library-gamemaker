/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
/// @param {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// <description>
/// ----------------------------------------------------------------------------
/// @returns {struct|undefined}
/// The struct serving as the event handler or undefined if it doesn't exist.
/// ----------------------------------------------------------------------------
function eventtarget_get_eventhandler(parameters = {}) {
    return variable_clone()
}

/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
/// @param {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @param {type} parameters.event
/// <description>
/// @param {type} parameters.name
/// <description>
/// @param {type} parameters.priority
/// <description>
/// @param {struct|callable} parameters.handler
/// This can be a callable or a struct with a `handle_event` method.
///
/// NOTE: The function is stored as an unbound method.
/// NOTE: The EventTarget is used as the `self` context when the method is called.
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <description>
/// ----------------------------------------------------------------------------
function eventtarget_attach_eventhandler(parameters = {}) {
    var _handler
    var _type
    if (is_callable(_handler)) {
        _handler = new Event({
            __method__ : method(undefined, _handler),
            handle_event : function(_event) {
                method(_event.EventTarget, __method__)();
            },
        })
    }
    self[$ "#eventhandlers"][$ _type] = _handler
    return self
}

function eventtarget_detach_eventhandler(parameters = {}) {
    return _return
}

/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
/// @param {struct} parameters
/// The struct containing the arguments to pass to the function.
/// @param {type} parameters.event
/// <description>
/// ----------------------------------------------------------------------------
/// @returns {struct} self
/// ----------------------------------------------------------------------------
function eventtarget_trigger_event(parameters = {}) {
    if () {
        new Event({})
    }
    for (var i = 0; i < <expression>; i++) {
        private.eventhandlers[$ _event][i](parameters)
    }
    return self
}