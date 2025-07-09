/// ----------------------------------------------------------------------------
/// @function get_state_names()
/// ----------------------------------------------------------------------------
/// @returns {array<string>}
/// An array containing the names of the states of the finite state machine.
/// ----------------------------------------------------------------------------
get_state_names = function() {
    return struct_get_names(private.states)
}