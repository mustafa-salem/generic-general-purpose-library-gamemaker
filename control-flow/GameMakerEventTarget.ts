static attach_eventhandler = function(parameters = {}) {
    this["#eventhandlers"];
    return this;
}

static trigger_event = function(parameters = {}) {
    var _ = this["#eventhandlers"];

    return this;
}

/// 
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// @returns {Struct|Undefined}
/// The struct serving as the event handler or undefined if it doesn't exist.
function eventtarget_get_eventhandler(parameters = {}) {
    return variable_clone()
}

/// 
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} parameters.event
/// @param {type} parameters.name
/// @param {type} parameters.priority
/// @param {struct|callable} parameters.handler
/// This can be a callable or a struct with a `handle_event` method.
/// NOTE: The function is stored as an unbound method.
/// NOTE: The EventTarget is used as the `this` context when the method is called.
/// @returns {type}
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
    this["#eventhandlers"][_type] = _handler
    return this
}

function eventtarget_detach_eventhandler(parameters = {}) {
    return _return
}

/// 
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} parameters.event
/// @returns {Struct} this
function eventtarget_trigger_event(parameters = {}) {
    if () {
        new Event({})
    }
    for (let i = 0; i < <expression>; i++) {
        private.eventhandlers[_event][i](parameters)
    }
    return this
}