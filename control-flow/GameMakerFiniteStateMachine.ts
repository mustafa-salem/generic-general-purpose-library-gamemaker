// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// The string used as the name of the default state
#macro FINITE_STATE_MACHINE_DEFAULT_STATE "default_state"

// Whether to throw an error when circular inheritance is found (true) or not (false)
#macro CIRCULAR_INHERITANCE_THROW_ERROR_FINITE_STATE_MACHINE_GENERIC \
true

// Whether to show warning messages in Output (true) or not (false)
#macro SHOW_WARNINGS_FINITE_STATE_MACHINE_GENERIC \
true

// Whether history should be tracked by default (true) or not (false)
#macro FINITE_STATE_MACHINE_DEFAULT_HISTORY_ENABLED \
false

// Default maxmimum history count
#macro FINITE_STATE_MACHINE_DEFAULT_HISTORY_CAPACITY \
5

// Startup errors
// show_error(_str, true)

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// This function is used to create an instance of FiniteStateMachine.
/// @returns {Struct.FiniteStateMachine}
function finitestatemachine_create() {
    return new FiniteStateMachine()
}

    ///
    /// NOTE: This function is only meant to be used in change()
    /// @returns {Function}
    get_current_event_function = function() {
        return private.temp_event
    }

    /// @returns {string}
    /// The name of the current state.
    get_current_state_name = function() {
        var _state_name = private.history_contents.length > 0 ? private.history_contents[0] : undefined
        return _state_name
    }

    /// @returns {mixed}
    /// The object instance handle or struct used as this context for event execution.
    get_execution_context = function() {
        return private.execution_context
    }

    /// @returns {integer}
    /// The maxmimum amount of history entries to keep.
    get_history_capacity = function() {
        return private.history_capacity
    }

    /// @returns {array}
    /// A clone of the array holding the history entries.
    get_history_contents = function() {
        return variable_clone(private.history_contents)
    }

    /// @returns {String}
    /// The name of the previous state.
    get_previous_state_name = function() {
        return private.history_contents.length > 1 ? private.history_contents[1].state_name : undefined
    }
    
/// @returns {Array<String>}
/// An array containing the names of the states of the finite state machine.
get_state_names = function() {
    return struct_get_names(private.states)
}

    /// This function is used to get the time the current state has been running.
    /// @returns {Real}
    get_state_runtime_seconds = function(parameters = {}) {
        return (get_timer() - private.state_start_time) / 1000000
    }

    ///
    /// @param {type} parameter_name
    /// <parameter_description>
    /// @returns {Bool}
    has_event = function(parameters = {}) {
        var _event_name = parameters["event_name"]
        if (!is_string(_event_name) or _event_name == "") {
            __debug_message("Event should be a non-empty string.")
            return false
        }
        var _current_event = private.states[get_current_state_name()][_event_name]
        return _current_event != undefined
    }

    ///
    /// @param {Type} arguments.transition_name
    /// @param {String} [arguments.source_state]
    /// @returns {Real}
    /// FSM_TRIGGER_GENERIC
    has_transition = function(arguments = {}) {
        var _transition_name   = arguments["transition_name"]
        var _source_state_name = arguments["source_state_name"]
        if (!is_string(_transition_name)) return false
        if (!is_string(_source_state_name)) return false
        if (_source_state_name == FSM_WILDCARD_TRANSITION_NAME_GENERIC) return true

        if (!__is_valid_transition_name({ transition_name : _transition_name, show_error : false })) {
            return false
        }

        var _transition_name   = arguments["transition_name"]
        var _source_state_name = arguments["source_state_name"]
        if (_source_state_name == WILDCARD_TRANSITION_NAME_FINITE_STATE_MACHINE_GENERIC) {
            // Wildcard transition
            if (struct_exists(private.wildcard_transitions, _transition_name)) {
                return "defined_trigger"
            }
        } else {
            // Default
            if (struct_exists(private.transitions, _source_state_name) and struct_exists(private.transitions[_source_state_name], _transition_name)) {
                return "defined_trigger"
            }
            while (struct_exists(private.state_parent_name, _source_state_name)) {
                _source_state_name = private.state_parent_name[_source_state_name]
                if (struct_exists(private.transitions, _source_state_name) and struct_exists(private.transitions[_source_state_name], _transition_name)) {
                    return "inherited_trigger"
                }
            }
        }

        return "undefined_trigger"
    }

    /// @returns {Bool}
    /// Whether history keeping is enabled.
    is_history_enabled = function() {
        return private.history_enabled
    }

    /// This function is used to check if a given state equals another state or is
    /// inherits from it.
    /// @param {string} state
    /// The name of the state to check.
    /// @param {string} [parent]
    /// The name of the parent state to check. Defaults to the current state.
    /// @returns {Bool}
    is_state = function(parameters = {}) {
        // the name of the state to check
        var _state_name  = parameters["state"]
        if (!__is_valid_state_name(_state_name)) {
            return false
        }
        // the name of the state to check as parent
        var _parent_name = parameters["parent"] ?? get_current_state_name()
        if (!__is_valid_state_name(_parent_name)) {
            return false
        }

        while (_state_name != undefined) {
            if (_state_name == _parent_name) {
                return true
            }
            _state_name = private.state[_state_name].parent_name
        }

        return false
    }

    ///
    /// @param {mixed} transition
    /// @param {Array<any>} arguments
    /// @returns {type}
    /// Whether the transition has been successfully triggered.
    trigger_transition = function(parameters = {}) {
        var _transitions = arguments["transition"]
        var _arguments   = arguments["arguments"]
        //
        for (let i = 0; _transitions.length; i++) {
            if (!__is_valid_transition_name({ transition_name : _transition_name })) { continue }
            var _currState, _source
            _currState = get_current_state_name()
            _source    = _currState
            // My triggers
            if (has_transition({ transition_name : _transition_name, source_state_name : _source }) == "defined_trigger") {
                if (__try_triggering_transition({
                    transitions : private.transitions[_source][_transition_name],
                    source_state_name : _currState,
                    trigger_name : _transition_name,
                    arguments : _arguments
                })) {
                    return true
                }
            }
            // Wild triggers
            if (has_transition({ transition_name : _transition_name, source_state_name : WILDCARD_TRANSITION_NAME_FINITE_STATE_MACHINE_GENERIC }) == "defined_trigger") {
                if (__try_triggering_transition({
                    transitions : private.wildcard_transitions[_transition_name],
                    source_state_name : _currState,
                    trigger_name : _transition_name,
                    arguments : _arguments
                })) {
                    return true
                }
            }
            // Parent triggers
            while (struct_exists(private.state_parent_name, _source)) {
                _source = private.state_parent_name[_source]
                if (has_transition({ transition_name : _transition_name, source_state_name : _source }) == "defined_trigger") {
                    if (__try_triggering_transition({
                        transitions : private.transitions[_source][_transition_name],
                        source_state_name : _currState,
                        trigger_name : _transition_name,
                        arguments : _arguments
                    })) {
                        return true
                    }
                }
            }
        }
        // return
        return false
    }

    /// This function is used to set properties regarding history keeping.
    /// @param {Bool} enabled
    /// Whether history keeping is enabled. If disabled only the two most recent
    /// entries are kept.
    /// @param {integer} capacity
    /// The maxmimum amount of history entries to keep. At least 2.
    /// @returns {Struct.FiniteStateMachine} this
    set_history = function({ enabled, capacity }: { enabled: boolean, capacity: number }) {
        private.history_enabled = enabled
        private.history_capacity = Math.max(2, capacity)
        // resize history
        if (private.history_enabled and private.history_contents.length > private.history_capacity) {
            array_resize(private.history_contents, private.history_capacity)
        } else if (!private.history_enabled and private.history_content.length(s) > 2) {
            array_resize(private.history_contents, 2)
        }
        // return
        return this
    }

    ///
    /// @param {type} execution_context
    /// The object instance handle or struct used as this context for event execution.
    /// @returns {Struct.FiniteStateMachine} this
    set_execution_context = function(parameters = {}) {
        private.execution_context = parameters.execution_context
        return this
    }

    /// This method is used to remove event handlers from events.
    /// @param {string|Array<String>|all} event
    /// <parameter_description>
    /// @param {callable|all} callable
    /// <parameter_description>
    /// @param {string|all} name
    /// <parameter_description>
    /// @returns {Struct.FiniteStateMachine} this
    remove_event_listener = function(parameters = {}) {
        // loop over events
        for (let i = 0; i < 0; i++) {
            // loop over event handlers
            for (let i = 0; i < 0; i++) {

            }
        }
        // private.event_handlers[_event_name]
        return this
    }

    ///
    /// @param {type} parameter_name
    /// <parameter_description>
    /// @returns {Struct.FiniteStateMachine} this
    remove_event = function(parameters = {}) {
        return this
    }

    /// This function is used to remove a state.
    /// @param {type} state
    /// @returns {Struct.FiniteStateMachine} this
    remove_state = function(parameters = {}) {
        var _state_names = parameters["state"]
        if (!is_array(_state_names)) { _state_names = [_state_names] }
        for (let i = 0; i < _state_names.length; i++) {
            var _state_name = _state_names[i]
            if (!__is_valid_state_name(_state_name)) {
                continue
            }
            if (_state_name == FINITE_STATE_MACHINE_DEFAULT_STATE) {
                __debug_message("Cannot remove the default state.")
                continue
            }
            struct_remove(private.states, _state_name)
        }
        return this
    }

    ///
    /// @param {type} parameter_name
    /// @returns {Struct.FiniteStateMachine} this
    remove_transition = function(parameters = {}) {
        return this
    }

/// 
/// @param {string} name
/// @param {string|undefined} [state]
/// @returns {Struct.FiniteStateMachine} this
add_event = function(parameters = {}) {

    /* ―――――――――――――――――――― ARGUMENT_VALIDATION ―――――――――――――――――――― */

    var _event_name = parameters["name"]
    var _state_name = parameters["state"] ?? FINITE_STATE_MACHINE_DEFAULT_STATE

    var _method = arguments["callable"]
    if (!__is_valid_event_name(_event_name)) {
        __debug_message("The event name should be a non-empty string.")
        return this
    }

    var _callable = parameters["callable"]
    if (!is_callable(_callable)) {
        __debug_message("The event callable should be a callable.")
        return this
    }

    /* ―――――――――――――――――――― LOGIC ―――――――――――――――――――― */

    private.events[_event_name] = {
        exists: _defined,
        callable: _method
    }

    if (this[_event_name] == undefined) {
        var _self = this
        var _temp = {
            finite_state_machine : _self,
            event_name           : _event_name
        }

        this[_event_name] = method(_temp, function() {
            var _args = undefined
            if (argument_count > 0) {
                _args = new Array(argument_count);
                for (let i = 0; i < argument_count; i++) { _args[i] = argument[i] }
            }
            finite_state_machine.__execute_event(event_name, undefined, _args)
            finite_state_machine.__trigger_event_listener(event_name)
        })
    }

    return this
}

    ///
    /// @param {type} runtime_frames
    /// @returns {Struct.FiniteStateMachine} this
    add_state_runtime = function(parameters = {}) {
        var _time
        if (!is_real(_time)) {
            __debug_message("Time should be a number")
            return this
        }
        private.state_start_time = get_timer() - _time * 1000000
        return this
    }

    /// This function is used to set the properties of a state.
    /// @param {string} name
    /// The name of the state to define.
    /// @param {string} parent
    /// The name of the parent state of the state to define.
    /// @returns {Struct.FiniteStateMachine} this
    add_state = function(parameters = {}) {

        /* ―――――――――――――――――――― ARGUMENT_VALIDATION ―――――――――――――――――――― */

        // the name string of the state
        var _state_name  = parameters["state"]
        if (!is_struct(parameters)) {
            __debug_message("argument0 should be a struct.")
            return this
        }
        if (!__is_valid_state_name(_state_name)) {
            __debug_message("argument0.name should be a valid state name.")
            return this
        }
        if (_state_name == FINITE_STATE_MACHINE_DEFAULT_STATE) {
            __debug_message("argument0.name cannot be the name of the default state.")
            return this
        }

        // the name string of the parent state of the state
        var _parent_name = parameters["parent"] ?? FINITE_STATE_MACHINE_DEFAULT_STATE
        if (!__is_valid_state_name(_parent_name)) {
            __debug_message("argument0.parent should be a valid state name.")
            return this
        }
        if (!exists_state({ state : _parent_name })) {
            __debug_message($"The parent state '{_parent_name}' is not defined.")
            return this
        }
        if (_parent_name == _state_name) {
            __debug_message("Cannot set a state as a parent to itself.")
            return this
        }

        /* ―――――――――――――――――――― LOGIC ―――――――――――――――――――― */

        // create new
        private.states[_state_name] ??= {
            name        : _state_name,
            parent_name : _parent_name,
        }

        // overwrite
        private.states[_state_name]["parent_name"] ??= _parent_name

        return this
    }

    /// Leaving source_state undefined is equivalent to providing all state names.
    /// Leaving destination_state undefined will cause the transition to reenter
    /// the current state.
    /// @param {Struct} arguments { transition_name : String, source_state_name : [String], destination_state_name : [String], predicate_method : [Function], leave_event : [Function], enter_event : [Function] }
    /// @returns {Struct.FiniteStateMachine} this
    add_transition = function(arguments = {}) {

        /* ―――――――――――――――――――― ARGUMENT_VALIDATION ―――――――――――――――――――― */

        // the name string of the transition
        var _transition_name = arguments["transition_name"]
        if (!__is_valid_transition_name(_transition_name)) {
            return undefined;
        }

        // the name string of the source state
        // if it is undefined the transition is a wildcard transition
        var _source_state_name = arguments["source_state_name"]
        _source_state_name ??= undefined

        // the name string of the destination state
        // if it is undefined the transition is a reflexive transition
        var _destination_state_name = arguments["destination_state_name"]
        if (!is_string(_destination_state_name) or (_destination_state_name == "")) {
            __debug_message("State name should be a non-empty string.")
            return undefined
        }

        // the condition for the transition execute
        var _predicate_method = arguments["predicate_method"]
        if (!is_callable(_predicate_method)) {
            __debug_message("Invalid value for 'condition' in add_transition(). Should be a function.")
            return this
        }

        // the custom leave state event
        var _leave_event = arguments["leave_event"]
        if (!is_callable(_leave_event)) {
            __debug_message("Invalid value for 'leave_func' in add_transition(). Should be a function.")
            return this
        }

        // the custom enter state event
        var _enter_event = arguments["enter_event"]
        if (!is_callable(_enter_event)) {
            __debug_message("Invalid value for 'enter_func' in add_transition(). Should be a function.")
            return this
        }

        /* ―――――――――――――――――――― LOGIC ―――――――――――――――――――― */

        if (!is_array(_source)) { _source = [_source] }

        for (let i = 0; i < _source.length; i++) {
            _source_state_name = _source[i]
            if (!is_string(_source_state_name) or (_source_state_name == "")) {
                __debug_message("State name should be a non-empty string. Transition not added.")
            } else {
                // Define the transition
                var _transition = {
                    source_state_name        : _source_state_name,
                    destination_state_name  : _destination_state_name,
                    predicate_method        : _predicate_method,
                    exists                    : "defined_trigger",
                    leave_event             : _leave_event,
                    enter_event             : _enter_event,
                }

                private.transitions[_transition_name] = _transition
            }
        }

        return this
    }

/// This function is used to attach a callable to an event. An event handler
/// is a callable that is called once the event has finished executing.
/// Event listeners are triggered regardless of the current state.
/// @param {string|Array<String>|all} event
/// @param {callable|all} callable
/// @param {string|all} name
/// @param {mixed} [execution_context]
/// The context in which code is to be executed.
/// Defaults to the finite state machine's execution context.
/// @returns {Struct.FiniteStateMachine} this
attach_eventhandler = function(parameters = {}) {
    // var _name ??= method_get_index(_callable)

    var _event    = parameters["event"]
    var _callable = parameters["callable"]
    var _execution_context  = parameters["execution_context"] ?? noone

    if (!is_string(_event)) {
        __debug_message("Event name should be a string.")
        return this
    }
    if (!is_callable(_callable)) {
        __debug_message("Callback should be a callable.")
        return this
    }

    if (struct_exists(private.event_handlers, _event)) {
        if (_execution_context != noone) _callable = method(_execution_context, _callable)
        private.event_handlers[_event] = {
            name     : "",
            callable : "",
        }
    } else {
        __debug_message($"Event '{_event}' does not exist.")
    }

    return this
}

    /// This method is used to change the finite state machine to another state.
    /// @param {String} state
    /// @param {Function} leavestate_event
    /// @param {Function} enterstate_event
    /// @param {Array<Any>} arguments
    /// @returns {Struct.FiniteStateMachine} this
    change_state = function(arguments) {
        // the name of the state to change to
        var _state_name  = arguments["state_name"]

        // the arguments to provide
        var _arguments   = arguments["arguments"]

        // leave_event validity check
        var _leave_event = arguments["leave_event"]
        if (_leave_event != undefined and !is_callable(_leave_event)) {
            __debug_message("Invalid value for 'leave_event' in change_state(). Should be a function.")
            return undefined
        }

        // enter_event validity check
        var _enter_event = arguments["enter_event"]
        if ((_enter_event != undefined) and !is_callable(_enter_event)) {
            __debug_message("Invalid value for 'enter_event' in change_state(). Should be a function.")
            return undefined
        }

        var _source_state_name = get_current_state_name()
        // __change_state({ state_name : _state_name, leave_event : _leave_event, enter_event : _enter_event, arguments : _arguments })
        _state_name = arguments["state_name"]
        var _leave = arguments["leave_event"]
        var _enter = arguments["enter_event"]
        var _data  = arguments["arguments"]
        var _defLeave = leave
        var _defEnter = enter
        leave = _leave
        enter = _enter

        // Leave current state
        if (leave == undefined) { leave = _defLeave }
        else { private.temp_event = _defLeave }
        leavestate_event(_data)

        // Init state
        private.state_start_time = get_timer()
        __add_to_history({ state_name : _state_name })

        // Enter next state
        if (enter == undefined) { enter = _defEnter }
        else { private.temp_event = _defEnter }
        enterstate_event(_data)

        // Reset temp variable
        private.temp_event = undefined

        leave = _defLeave
        enter = _defEnter
        __trigger_event_listener("change_state_event", [_state_name, _source_state_name])

        return this
    }

    ///
    /// @param {string} state
    /// The name of the state to check.
    /// @returns {Bool}
    /// Whether the finite state machine has a state with the given name.
    exists_state = function(parameters = {}) {
        var _state_name = parameters["state"]
        if (!__is_valid_state_name()) {
            return false
        }
        return private.states[_state_name] != undefined
    }

    /// This function is used to execute the current event of the parent state.
    /// @param {Struct} parameter_name
    /// @returns {Struct.FiniteStateMachine} this
    execute_parentevent = function(parameters = {}) {
        var _state_name = private.history_contents[0]

        if (private.state_parent_name[_state_name] == undefined) {
            __debug_message("State '{_state_name}' has no parent state.")
            return this
        }

        if (CIRCULAR_INHERITANCE_THROW_ERROR_FINITE_STATE_MACHINE_GENERIC) {
            private.child_queue    = []
            var _length = private.child_queue.length
            var _str = ""

            var _index = 0
            for (let i = 0; i < _length; i++) {
                if (private.child_queue[i] == _state_name) {
                    _index = i
                    break;
                }
            }

            if (_index < _length) {
                _str += string(_state_name)
                for (let i = 1; i < _length - _index; i++) {
                    _str += " -> " + string(private.child_queue[_index])
                }
                _str += " -> " + string(_state_name)
                __debug_message($"Circular inheritance found. Inheritance chain: (-> reads as \"inherits from\")\n{_str}")
                return undefined
            }
        }

        __execute_event({ event_name : private.current_event_name })

        return this
    }

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

class FiniteStateMachine {

    /// ----------------------------------------------------------------------------
    ///
    /// ----------------------------------------------------------------------------
    __debug_message = function(_method_name, _message_string) {
        show_debug_message($"FiniteStateMachine.{_method_name}: {_message_string}")
    }

    /// @type {struct<mixed>}
    /// The struct containing the private variables of the finite state machine instance.
    this.private = {}

    /// @type {mixed}
    /// The object instance or struct which is the this context used when events
    /// are executed. Defaults to the scope in which the finite state machine
    /// is being created.
    private.execution_context = other

    /// @type {Struct}
    ///
    private.states = {}
    /// @type {Real}
    /// Start time of the current state (in microseconds)
    private.state_start_time = get_timer()

    private.states[FINITE_STATE_MACHINE_DEFAULT_STATE] = {
        name        : FINITE_STATE_MACHINE_DEFAULT_STATE,
        parent_name : undefined,
    }

    ///
    /// @returns {Bool}
    /// Whether the string is valid as a state name.
    __is_valid_state_name = function(_string) {
        if (!is_string(_string) or _string == "") {
            __debug_message("The state name should be a non-empty string.")
            return false
        }
        return true
    }

    // enterstate_event: { exists: "undefined_event", callable: function() {} },

    /// @type {String|Undefined}
    // Current event
    private.current_event_name = undefined
    /// @type {Struct}
    /// Default functions for events
    /// { <event_name> : { <state_name> : { callable, execution_context } } }
    private.events = {}
    /// @type {Function|Undefined}
    // Temporary event - Used when changing states
    private.temp_event = undefined

    /// @returns {Bool}
    /// Whether the string is valid as an event name.
    __is_valid_event_name = function(_string) {
        if (struct_exists(this, _string)) {
            __debug_message($"Can not use '{_string}' as an event.")
            return false
        }
        return true
    }

    ///
    /// @param {string} event_name
    /// The name of the event to execute.
    /// @param {string} state_name
    /// The name of the state to execute the event for.
    /// @param {Array<any>} arguments
    /// The array of variables to pass into the event callable.
    /// @returns {Struct.FiniteStateMachine} this
    __execute_event = function(parameters = {}) {
        var _event_name = parameters["event_name"]
        var _state_name = parameters["state_name"] ?? private.history_contents[0]
        var _arguments  = parameters["arguments"]

        if (!exists_state({ state : _state_name })) {
            __debug_message("State '{_state_name}' is not defined.")
            return undefined
        }

        private.current_event_name = _event_name
        method(private.execution_context, private.states[_state_name][_event_name].callable)(_arguments)

        return this
    }

    /// @type {Struct}
    /// { <state_name> : [ { name, callable, execution_context } ] }
    private.event_handlers = {}

    ///
    __trigger_event_listener = function(_event_name, _arguments = []) {
        var _event_handlers = private.event_handlers[_event_name]
        if (!is_array(_event_handlers)) {
            return undefined;
        }
        for (let i = 0; i < _event_handlers.length; i++) {
            method(private.execution_context, _event_handlers[i].callable)(_arguments)
        }
    }

    /// @type {Struct}
    private.transitions    = {}
    /// @type {Struct}
    private.wildcard_transitions = {}

    /// @returns {Bool}
    /// Whether the string is a valid transition name.
    __is_valid_transition_name = function(_string) {
        if (is_string(_string) and _string != "") {
            return true
        } else {
            __debug_message("Transition name should be a non-empty string.")
            return false
        }
    }

    ///
    /// @param {Struct} arguments { transitions : Array<Struct>, source_state_name : String, trigger_name : String, arguments : [Array<Any>] }
    /// @returns {Bool} Whether the trigger_transition is successful (true), or not (false)
    __try_triggering_transition = function(arguments = {}) {
        var _transitions       = arguments["transitions"]
        var _source_state_name = arguments["source_state_name"]
        var _trigger_name      = arguments["trigger_name"]
        var _arguments         = arguments["arguments"]

        var _dest

        for (let i = 0; i < _transitions.length; i++) {
            var _transition = _transitions[i]
            // For reflexive wildcard transitions, change to source
            _dest = _transition.to
            if (_dest == REFLEXIVE_TRANSITION_NAME_FINITE_STATE_MACHINE_GENERIC) _dest = _source

            // Check condition
            if (_transition.condition(_arguments)) {
                change_state({ state_name : _dest, leave_event : _transition.leavestate_event, enter_event : _transition.enterstate_event, arguments : _arguments })
                return true
            }
        }

        return false
    }

    /// @type {Bool}
    /// whether history keeping is enabled
    private.history_enabled    = FINITE_STATE_MACHINE_DEFAULT_HISTORY_ENABLED
    /// @type {integer}
    /// the maxmimum amount of history entries
    private.history_capacity = Math.max(2, FINITE_STATE_MACHINE_DEFAULT_HISTORY_CAPACITY)
    /// @type {Array<String>}
    /// the array holding the history entries
    private.history_contents = []

    /// ----------------------------------------------------------------------------
    ///
    /// ----------------------------------------------------------------------------
    __add_to_history = function(parameters = {}) {
        var _state_name = parameters["state_name"]
        private.history_contents.splice(0, 0, { state_name : _state_name });
        // resize history
        if (private.history_enabled and private.history_contents.length > private.history_capacity) {
            array_resize(private.history_contents, private.history_capacity)
        } else if (!private.history_enabled and private.history_contents.length > 2) {
            array_resize(private.history_contents, 2)
        }
    }

    // built-in state
    add_state({ name: FINITE_STATE_MACHINE_DEFAULT_STATE })

    // built-in events
    add_event({ event : "enterstate_event"  })
    add_event({ event : "leavestate_event"  })
    add_event({ event : "change_state_event" })

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
