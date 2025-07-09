/// ----------------------------------------------------------------------------
/// @description
/// This function is used to attach a callable to an event. An event handler
/// is a callable that is called once the event has finished executing.
/// Event listeners are triggered regardless of the current state.
/// ----------------------------------------------------------------------------
/// @param {string|array<string>|all} event
/// <parameter_description>
///
/// @param {callable|all} callable
/// <parameter_description>
///
/// @param {string|all} name
/// <parameter_description>
///
/// @param {mixed} [execution_context]
/// The context in which code is to be executed.
/// Defaults to the finite state machine's execution context.
/// ----------------------------------------------------------------------------
/// @returns {struct.FiniteStateMachine} self
/// ----------------------------------------------------------------------------
attach_eventhandler = function(parameters = {}) {
	// var _name ??= method_get_index(_callable)

	var _event    = parameters[$ "event"]
	var _callable = parameters[$ "callable"]
	var _execution_context  = parameters[$ "execution_context"] ?? noone

	if (!is_string(_event)) {
		__debug_message("Event name should be a string.")
		return self
	}
	if (!is_callable(_callable)) {
		__debug_message("Callback should be a callable.")
		return self
	}

	if (struct_exists(private.event_handlers, _event)) {
		if (_execution_context != noone) _callable = method(_execution_context, _callable)
		private.event_handlers[$ _event] = {
			name     : "",
			callable : "",
		}
	} else {
		__debug_message($"Event '{_event}' does not exist.")
	}

	return self
}