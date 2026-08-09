
/*******************************************************************************
――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
time_source_controller_generic.gml

@overview
This file defines the constructor for the TimeSourceControllerGeneric struct.
This struct caches time sources created by CallLater and automatically
garbage collects them once they have called their callback method.
――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
*******************************************************************************/

///
/// Creates a controller struct for time sources used by the generic general
/// purpose library. Do not call this function.
class TimeSourceControllerGeneric {

    static default_parent       = DEFAULT_PARENT_TIME_SOURCE_GENERIC
    static default_period       = DEFAULT_PERIOD_TIME_SOURCE_GENERIC
    static default_units        = DEFAULT_UNITS_TIME_SOURCE_GENERIC
    static default_repetitions  = DEFAULT_REPETITIONS_TIME_SOURCE_GENERIC
    static default_expiry_type  = DEFAULT_EXPIRY_TYPE_TIME_SOURCE_GENERIC

    static time_sources = []

    /// @type {Array<Struct.TimeSourceGeneric>}
    /// caches time sources created by CallLater
    static call_later_time_sources = []

    //     ―――――――――――――――――――― STEP_EVENT ――――――――――――――――――――

    static "Step Event"() {
        // remove time sources used with CallLater once they have run their callback method
        for (let i = 0; i < call_later_time_sources.length; i++) {
            var _time_source = call_later_time_sources[i]
            // destroy stopped time sources
            if (!_time_source.get_state() == time_source_state_stopped) {
                _time_source.destroy()
            }
            // delete destroyed time sources from array
            if (!_time_source.exists) {
                call_later_time_sources.splice(i, 1)
            }
        }
    }

    //  ―――――――――――――――――――― STEP_EVENT ――――――――――――――――――――

    static get_default_parent() {
        return default_parent
    }

    /// Sets the default value used for the parent time source when creating a time source.
    /// @param {Struct} arguments
    /// {Id.TimeSource or Struct.TimeSourceGeneric} time_source
    static set_default_parent(arguments = {}) {
        if (is_struct(arguments.time_source)) {
            default_parent = arguments.time_source
        } else {
            default_parent = new TimeSourceGeneric({ time_source_id : arguments.time_source })
        }
    }

    static get_default_period() {
        return default_period
    }

    static get_default_units() {
        return default_units
    }

    static get_default_repetitions() {
        return default_repetitions
    }

    static get_default_expiry_type() {
        return default_expiry_type
    }

    static add_garbage_collection(arguments = {}) {
        call_later_time_sources.push(arguments.time_source)
    }

}