/******************************************************************************/
#region    –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/******************************************************************************/

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

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/

function FiniteStateMachine() constructor {

	/// ----------------------------------------------------------------------------
	/// @function __debug_message(_method_name, _message_string)
	/// ----------------------------------------------------------------------------
	__debug_message = function(_method_name, _message_string) {
	    show_debug_message($"FiniteStateMachine.{_method_name}: {_message_string}")
	}

	/// @type {struct<mixed>}
	/// The struct containing the private variables of the finite state machine instance.
	self.private = {}

	/// @type {mixed}
	/// The object instance or struct which is the self context used when events
	/// are executed. Defaults to the scope in which the finite state machine
	/// is being created.
	private.execution_context = other

	/// @type {struct}
	///
	private.states = {}
	/// @type {Real}
	/// Start time of the current state (in microseconds)
	private.state_start_time = get_timer()

	private.states[$ FINITE_STATE_MACHINE_DEFAULT_STATE] = {
		name        : FINITE_STATE_MACHINE_DEFAULT_STATE,
		parent_name : undefined,
	}

	/// ----------------------------------------------------------------------------
    /// @function __is_valid_state_name(_string)
    /// ----------------------------------------------------------------------------
    /// @returns {boolean}
    /// Whether the string is valid as a state name.
    /// ----------------------------------------------------------------------------
    __is_valid_state_name = function(_string) {
        if (!is_string(_string) or _string == "") {
            __debug_message("The state name should be a non-empty string.")
            return false
        }
        return true
    }

	// enter_state_event: { exists: "undefined_event", callable: function() {} },

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

	/// ----------------------------------------------------------------------------
	/// @function __is_valid_event_name(_string)
	/// ----------------------------------------------------------------------------
	/// @returns {boolean}
	/// Whether the string is valid as an event name.
	/// ----------------------------------------------------------------------------
	__is_valid_event_name = function(_string) {
		if (struct_exists(self, _string)) {
			__debug_message($"Can not use '{_string}' as an event.")
			return false
		}
		return true
	}

	/// ----------------------------------------------------------------------------
	/// @function __execute_event(parameters)
	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @parameter {string} event_name
	/// The name of the event to execute.
	///
	/// @parameter {string} state_name
	/// The name of the state to execute the event for.
	///
	/// @parameter {array<any>} arguments
	/// The array of variables to pass into the event callable.
	///
	/// ----------------------------------------------------------------------------
	/// @returns {struct.FiniteStateMachine} self
	/// ----------------------------------------------------------------------------
	__execute_event = function(parameters = {}) {
		var _event_name = parameters[$ "event_name"]
		var _state_name = parameters[$ "state_name"] ?? private.history_contents[0]
		var _arguments  = parameters[$ "arguments"]

		if (!exists_state({ state : _state_name })) {
			__debug_message("State '{_state_name}' is not defined.")
			return undefined
		}

		private.current_event_name = _event_name
		method(private.execution_context, private.states[$ _state_name][$ _event_name].callable)(_arguments)

		return self
	}

	/// @type {struct}
	/// { <state_name> : [ { name, callable, execution_context } ] }
	private.event_handlers = {}

	/// ----------------------------------------------------------------------------
	/// @function __trigger_event_listener(_event_name, _arguments)
	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	__trigger_event_listener = function(_event_name, _arguments = []) {
		var _event_handlers = private.event_handlers[$ _event_name]
		if (!is_array(_event_handlers)) { return }
		for (var i = 0; i < array_length(_event_handlers); i++) {
			method(private.execution_context, _event_handlers[i].callable)(_arguments)
		}
	}

	/// ----------------------------------------------------------------------------
	/// @type {Struct}
	private.transitions	= {}
	/// ----------------------------------------------------------------------------
	/// @type {Struct}
	private.wildcard_transitions = {}
	/// ----------------------------------------------------------------------------

	/// ----------------------------------------------------------------------------
	/// @function __is_valid_transition_name(_string)
	/// ----------------------------------------------------------------------------
	/// @returns {boolean}
	/// Whether the string is a valid transition name.
	/// ----------------------------------------------------------------------------
	__is_valid_transition_name = function(_string) {
		if (is_string(_string) and _string != "") {
			return true
		} else {
			__debug_message("Transition name should be a non-empty string.")
			return false
		}
	}

	/// ----------------------------------------------------------------------------
	/// @function __try_triggering_transition(parameters)
	/// ----------------------------------------------------------------------------
	/// @parameter {Struct} arguments { transitions : Array<Struct>, source_state_name : String, trigger_name : String, arguments : [Array<Any>] }
	/// @returns {boolean} Whether the trigger_transition is successful (true), or not (false)
	__try_triggering_transition = function(arguments = {}) {
		var _transitions       = arguments[$ "transitions"]
		var _source_state_name = arguments[$ "source_state_name"]
		var _trigger_name      = arguments[$ "trigger_name"]
		var _arguments         = arguments[$ "arguments"]

		var _dest

		for (var i = 0; i < array_length(_transitions); i++) {
			var _transition = _transitions[i]
			// For reflexive wildcard transitions, change to source
			_dest = _transition.to
			if (_dest == REFLEXIVE_TRANSITION_NAME_FINITE_STATE_MACHINE_GENERIC) _dest = _source

			// Check condition
			if (_transition.condition(_arguments)) {
				change_state({ state_name : _dest, leave_event : _transition.leave_state_event, enter_event : _transition.enter_state_event, arguments : _arguments })
				return true
			}
		}

		return false
	}

	/// @type {boolean}
	/// whether history keeping is enabled
	private.history_enabled	= FINITE_STATE_MACHINE_DEFAULT_HISTORY_ENABLED
	/// @type {integer}
	/// the maxmimum amount of history entries
	private.history_capacity = max(2, FINITE_STATE_MACHINE_DEFAULT_HISTORY_CAPACITY)
	/// @type {array<string>}
	/// the array holding the history entries
	private.history_contents = []

	/// ----------------------------------------------------------------------------
	/// @function __add_to_history()
	/// ----------------------------------------------------------------------------
	__add_to_history = function(parameters = {}) {
		var _state_name = parameters[$ "state_name"]
		array_insert(private.history_contents, 0, { state_name : _state_name })
		// resize history
		if (private.history_enabled and array_length(private.history_contents) > private.history_capacity) {
			array_resize(private.history_contents, private.history_capacity)
		} else if (!private.history_enabled and array_length(private.history_contents) > 2) {
			array_resize(private.history_contents, 2)
		}
	}

	// built-in state
	add_state({ name : FINITE_STATE_MACHINE_DEFAULT_STATE })

	// built-in events
	add_event({ event : "enter_state_event"  })
	add_event({ event : "leave_state_event"  })
	add_event({ event : "change_state_event" })

}

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/
