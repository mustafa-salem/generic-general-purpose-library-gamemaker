/// ----------------------------------------------------------------------------
/// @function gamemaker_timesource_create(arguments)
/// ----------------------------------------------------------------------------
/// @description
/// This script function serves as a proxy for the static method function:
/// TimeSourceGeneric.create
/// ----------------------------------------------------------------------------
function gamemaker_timesource_create(arguments = {}) {
	arguments.creation_scope = other
	return new TimeSourceGeneric(arguments)

	var _arguments = TimeSourceGeneric.private.creation_arguments(arguments)
	private.time_source_id = time_source_create(
		_arguments.parent,
		_arguments.period,
		_arguments.units,
		_arguments.callback,
		_arguments.arguments,
		_arguments.repetitions,
		_arguments.expiry_type,
	)
}

/// ----------------------------------------------------------------------------
/// @param {Struct} arguments
///
/// @param {Struct.TimeSourceGeneric|Id.TimeSource} arguments.time_source
/// <parameter_description>
///
/// @param {Struct.TimeSourceGeneric|Id.TimeSource} arguments.parent
/// The parent time source of the new time source.
///
/// @param {Real} arguments.period
/// The period that the time source runs for.
///
/// @param {Constant.TimeSourceUnit} arguments.units
/// The units that the given period is in.
///
/// @param {Real|Infinity} arguments.repetitions
/// The number of times the Time Source should repeat,
/// or infinity for indefinite repetition.
///
/// @param {Constant.TimeSourceExpiry} arguments.expiry_type
/// Whether the Time Source expires on the frame nearest to its expiry,
/// or on the next frame.
///
/// @param {Function} arguments.callback
/// The method or script function to call when the Time Source expires.
///
/// @param {Array<Any>} arguments.arguments
/// An array containing the arguments to pass into the method
///
/// @param {} arguments.scope
///
/// ----------------------------------------------------------------------------