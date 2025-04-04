/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_timesource_get_children(parameters = {}) {
	if (is_instanceof(self, TimeSourceGeneric)) { arguments.time_source = self }
	var _time_source_id = get_id(arguments)
	var _children_ids = time_source_get_children(_time_source_id)
	var _children = []
	for (var i = 0; i < array_length; i++) {
		array_push(_children, new TimeSourceGeneric({ time_source_id : _children_ids[i] }))
	}
	return _children
}
