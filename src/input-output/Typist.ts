// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function typist_create() {
    return new Typist()
}

/// 
/// @param {type} parameter_name
/// @param {type} parameter_name
/// @returns {type}
function gamemaker_typist_add_event(parameters = {}) {
    scribble_typists_add_event(name, function)
    return undefined
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――


function Typist() {

    private = {
        typist_instance : scribble_typist([perLine]),
    }

    ///
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @returns {Struct.Typist} this
    fade_in(parameters = {}) {
        private.typist_instance.in(speed, smoothness)
    }

    ///
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @returns {Struct.Typist} this
    fade_out(parameters = {}) {
        private.typist_instance.out(speed, smoothness, [backwards])
    }

    /// 
    /// @param {Struct} parameters
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @returns {Real}
    public get position() {
        return private.typist_instance.position;
    }

    ///
    /// @returns {Struct.Typist} this
    reset_animation() {
        private.typist_instance.reset()
        return this
    }

    ///
    /// @param {Struct} parameters
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @returns {Struct.Typist} this
    ease(parameters = {}) {
        private.typist_instance.ease(easeMethod, dx, dy, xscale, yscale, rotation, alphaDuration)
        return _return
    }

    get_state(parameters = {}) {
        return private.typist_instance.get_state()
    }

    set_paused(parameters = {}) {
        private.typist_instance.pause()
        private.typist_instance.unpause()
        return _return
    }

    /// @returns {Bool}
    get_paused() {
        return private.typist_instance.get_paused()
    }

    //     ―――――――――――――――――――― PAUSE ――――――――――――――――――――

    //  ―――――――――――――――――――― PAUSE ――――――――――――――――――――

    //     ―――――――――――――――――――― SKIPPING ――――――――――――――――――――

    ///
    /// @param {type} skipping_animation
    /// @param {type} ignore_pause
    /// @returns {Struct.Typist} this
    set_skip_animation(parameters = {}) {
        if (parameters.ignore_pause) {
            private.typist_instance.skip(parameters.skipping_animation)
        } else {
            private.typist_instance.skip_to_pause(parameters.skipping_animation)
        }
        return this
    }

    ///
    /// @returns {Bool} Whether the typist is skipping typewriter animation.
    get_skip_animation() {
        return private.typist_instance.get_skip()
    }

    //  ―――――――――――――――――――― SKIPPING ――――――――――――――――――――

    //     ―――――――――――――――――――― SOUND ――――――――――――――――――――

    ///
    /// @param {type} parameters.parameter_name
    /// @returns {Struct.Typist} this
    sync_to_sound(parameters = {}) {
        private.typist_instance.sync_to_sound(soundInstance)
        return _return
    }

    ///
    /// @param {Struct} parameters
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @returns {Struct.Typist} this
    sound(parameters = {}) {
        private.typist_instance.sound(soundArray, overlap, pitchMin, pitchMax. [gain=1])
        return _return
    }

    ///
    /// @param {Struct} parameters
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @param {type} parameters.parameter_name
    /// @returns {Struct.Typist} this
    sound_per_char(parameters = {}) {
        private.typist_instance.sound_per_char(soundArray, pitchMin, pitchMax, [exceptionString], [gain=1])
        return _return
    }

    //  ―――――――――――――――――――― SOUND ――――――――――――――――――――

    //     ―――――――――――――――――――― DELAY ――――――――――――――――――――

    /// @returns {Bool}
    /// Whether the typewriter is set to ignore character and tag delays.
    get_ignore_delay() {
        return private.typist_instance.get_ignore_delay()
    }

    /// @param {Bool} ignore_delay
    /// Whether the typewriter should ignore character and tag delays.
    /// @returns {Struct.Typist} this
    set_ignore_delay(parameters = {}) {
        private.typist_instance.ignore_delay(parameters.ignore_delay)
        return this
    }

    ///
    /// @param {string} character
    /// @param {Real} delay_frames
    /// @param {Real} delay_milliseconds
    /// @returns {Struct.Typist} this
    set_character_delay(parameters = {}) {
        for (let i = 0; i < ; i++) {
            if (<condition>) {
                private.typist_instance.character_delay_add(character, delay)
            } else if (<condition>) {
                private.typist_instance.character_delay_remove(character)
            } else {
                private.typist_instance.character_delay_clear()
            }
        }
        return
    }

    //  ―――――――――――――――――――― DELAY ――――――――――――――――――――

    //     ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――

    ///
    /// @param {callable|undefined} callable
    /// The function that will be executed once per character as that character is revealed
    /// @returns {Struct.Typist} this
    set_per_character_callable(parameters = {}) {
        private.typist_instance.function_per_char(parameters.callable)
        return this
    }

    ///
    /// @param {callable|undefined} callable
    /// @returns {Struct.Typist} this
    set_on_complete_callable(parameters = {}) {
        private.typist_instance.function_on_complete(parameters.callable)
        return this
    }

    //  ―――――――――――――――――――――――――――――――――――――――――― FUNCTIONS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――

    //     ―――――――――――――――――――― EXECUTION_SCOPE ――――――――――――――――――――

    /// @returns {mixed}
    get_execution_scope() {
        return private.typist_instance.get_execution_scope()
    }

    ///
    /// @param {mixed} execution_scope
    /// @returns {Struct.Typist} this
    set_execution_scope(parameters = {}) {
        private.typist_instance.execution_scope(parameters.execution_scope)
        return this
    }

    //  ―――――――――――――――――――― EXECUTION_SCOPE ――――――――――――――――――――

    //     ―――――――――――――――――――― TEXT_ELEMENT ――――――――――――――――――――

    /// @returns {Struct.TextElement}
    get_text_element() {
        return private.typist_instance.get_text_element()
    }

    //  ―――――――――――――――――――― TEXT_ELEMENT ――――――――――――――――――――

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ――――――――――――――――――――――――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――