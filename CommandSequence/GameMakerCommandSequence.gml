/******************************************************************************/
#region    –––––––––––––––––––– CONSTRUCTOR ––––––––––––––––––––
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// @description
/// An instance of 'GameMakerCommandSequence' is a container for a series of commands that it then
/// runs. Cutscenes may or may not be persistant between rooms.
///
/// # Execution Context
/// When executing command the 'self' context defaults to the instance where the
/// cutscene was originally created and the 'other' context is the cutscene itself.
/// The 'self' context may be set to any other value.
/// ----------------------------------------------------------------------------
function GameMakerCommandSequence() constructor {

    /// @type {struct}
    ///
    private = {
        commands      : [],
        command_index : 0,
    }

    private.execute_next_command = function() {
        var _parameters = {}
        _parameters.cutscene = self
        if (array_length(private.commands) < private.command_index - 1) { return }
        private.commands[private.command_index](_parameters)
        private.command_index++
    }

    /// ----------------------------------------------------------------------------
    /// @description
    /// This function adds a command to the cutscene.
    /// ----------------------------------------------------------------------------
    /// @parameter {callable} callable
    /// The callable that contains the code to run on the execution.
    /// @parameter {mixed} execution_context
    /// The context the command will be executed in. This can be a struct or an
    /// instance. This will default to the cutscenes default execution context.
    static add_command = function(parameters = {}) {
        array_push(commands, method(parameters.execution_context, parameters.callable))
        return self
    }

    self.add_command = method(self, add_command)

    static exists = function(parameters = {}) {
        return _return
    }

    self.exists = method(self, exists)

    static create = function(parameters = {}) {
        return _return
    }

    self.create = method(self, create)

    static destroy = function(parameters = {}) {
        return _return
    }

    self.destroy = method(self, destroy)

    static pause = function(parameters = {}) {
        return _return
    }

    self.pause = method(self, pause)

    static resume = function(parameters = {}) {
        return _return
    }

    self.resume = method(self, resume)

    /// @parameter {type} duration_seconds
    /// @parameter {type} condition
    static wait = function(parameters = {}) {
        return self
    }

    self.wait = method(self, wait)

    static stop = function(parameters = {}) {
        return self
    }

    self.stop = method(self, stop)

}

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTOR ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– CONSTRUCTS ––––––––––––––––––––
/******************************************************************************/

gamemaker_construct_create({ name : "cutscene_object", parent : "ingameevent_construct" })

.set_event({ event : "create_event", callable : function() {
    waiting = 0
    cs_wait_timer = 0
    cs_wait_amount = 0
    cs_wait_dialogue = 0
    cs_wait_custom = 0
    cs_wait_box = -1
    private.dialoguer = 438438943
    kill_actors = 0
    loadedState = 0
    instant = 0
    breakme = 0
    current_command = 0
    maximum_command = 1
    cutscene_object = 9999999
    msgside = -1
    zurasu = 0
    mysound = -1
    initialized = 0
    actor_selected = "noone"
    actor_selected_id = 99999999
    for (i = 0; i < 20; i++) {
        actor_id[i] = 99999999
        actor_name[i] = "noone"
    }
    for (i = 0; i < 10; i++) save_object[i] = 99999999
    scr_cutscene_master_commands_initialize()
    terminate_this_frame = 0
}})

.set_event({ event : "step_event", callable : function() {
    if (initialized == 0) {
        initialized = 1
    if (waiting == 0) {
        i = current_command
        while (i < maximum_command) {
            command_actor[i] = actor_selected_id
            _c = command[i]

    		debug_log_event("command: " + string(_c))

            scr_cutscene_commands()
            if (breakme == 1) {
                breakme = 0
                break
            } else {
                i++
                continue
            }
        }
    }
    current_command = (i + 1)
    if (waiting == 1) {
    	debug_log_event("waiting")

        if (cs_wait_amount > 0) {
            cs_wait_timer++
            if (cs_wait_timer >= cs_wait_amount) {
                cs_wait_amount = 0
                cs_wait_timer = 0
                waiting = 0
            }
        }
        if (cs_wait_box >= 0) {
            if (!instance_exists(mydialoguer)) {
                cs_wait_box = -1
                waiting = 0
            } else if (mydialoguer.active == true) {
                if (instance_exists(mydialoguer.writer)) {
                    if (mydialoguer.writer.msgno >= cs_wait_box) {
                        cs_wait_box = -1
                        waiting = 0
                    }
                }
            }
        }
        if (cs_wait_dialogue == 1) {
            if (!instance_exists(mydialoguer)) {
                cs_wait_dialogue = 0
                waiting = 0
            }
        }
    }
    if (terminate_this_frame == 1) {
        if (kill_actors == 1) {
            for (jj = 0; jj < 20; jj++) {
                gamemaker_constructinstance_destroy({ instance : actor_id[jj] })
            }
        }
        instance_destroy()
    }
}})

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTS ––––––––––––––––––––
/******************************************************************************/
