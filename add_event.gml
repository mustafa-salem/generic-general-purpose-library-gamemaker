	/// ----------------------------------------------------------------------------
	/// @function add_event(parameters)
	/// ----------------------------------------------------------------------------
	/// @description
	/// <function_description>
	/// ----------------------------------------------------------------------------
	/// @param {string} name
	/// <parameter_description>
	///
	/// @param {string|undefined} [state]
	/// <parameter_description>
	///
	/// ----------------------------------------------------------------------------
	/// @returns {struct.FiniteStateMachine} self
	/// ----------------------------------------------------------------------------
	add_event = function(parameters = {}) {

		/* ―――――――――――――――――――― ARGUMENT_VALIDATION ―――――――――――――――――――― */

		var _event_name = parameters[$ "name"]
		var _state_name = parameters[$ "state"] ?? FINITE_STATE_MACHINE_DEFAULT_STATE

		var _method = arguments[$ "callable"]
		if (!__is_valid_event_name(_event_name)) {
			__debug_message("The event name should be a non-empty string.")
			return self
		}

		var _callable = parameters[$ "callable"]
		if (!is_callable(_callable)) {
			__debug_message("The event callable should be a callable.")
			return self
		}

		/* ―――――――――――――――――――― LOGIC ―――――――――――――――――――― */

		private.events[$ _event_name] = {
			exists: _defined,
			callable: _method
		}

		if (self[$ _event_name] == undefined) {
			var _self = self
			var _temp = {
				finite_state_machine : _self,
				event_name           : _event_name
			}

			self[$ _event_name] = method(_temp, function() {
				var _args = undefined
				if (argument_count > 0) {
					_args = array_create(argument_count)
					for (var i = 0; i < argument_count; i++) { _args[i] = argument[i] }
				}
				finite_state_machine.__execute_event(event_name, undefined, _args)
				finite_state_machine.__trigger_event_listener(event_name)
			})
		}

		return self
	}