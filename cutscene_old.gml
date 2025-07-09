/******************************************************************************/
#region    –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

function c_actormoveparty(argument0) {
    __mcactor = scr_findactor("kris")
    if (__mcactor >= 0) {
        c_cmd("select", __mcactor)
        c_cmd("walkdirect", overworld_character_object.x, overworld_character_object.y, argument0)
    }
    for (__jj = 0; __jj < 2; __jj++) {
        if (instance_exists(CATERPILLAR_CHARACTERS[__jj])) {
            __mcactor = scr_findactor(CATERPILLAR_CHARACTERS[__jj].name)
            if (__mcactor >= 0) {
                c_cmd("select", __mcactor)
                c_cmd("walkdirect", CATERPILLAR_CHARACTERS[__jj].x, CATERPILLAR_CHARACTERS[__jj].y, argument0, 0)
            }
        }
    }
}

function c_actorsetsprites(argument0, argument1, argument2, argument3, argument4) {
    if (argument1 != 0) {
        c_cmd("var", argument0, "usprite", argument1)
    if (argument2 != 0) {
        c_cmd("var", argument0, "rsprite", argument2)
    if (argument3 != 0) {
        c_cmd("var", argument0, "dsprite", argument3)
    if (argument4 != 0) {
        c_cmd("var", argument0, "lsprite", argument4)
}

function c_delayfacing(argument0, argument1) {
    c_cmd("delaycmd", argument0, "facing", argument1, 0, 0, 0)
}

function c_delaywalk(argument0, argument1, argument2, argument3) {
    c_cmd("delaycmd", argument0, "walk", argument1, argument2, argument3, 0)
}

function c_delaywalkdirect(argument0, argument1, argument2, argument3) {
    c_cmd("delaycmd", argument0, "walkdirect", argument1, argument2, argument3, 0)
}

function c_emote() {
    if (argument_count == 0) {
        c_cmd("emote", "!", 30, 0, 0)
    } else if (argument_count == 1) {
        c_cmd("emote", argument[0], 30, 0, 0)
    } else if (argument_count == 2) {
        c_cmd("emote", argument[0], argument[1], 0, 0)
    } else if (argument_count == 3) {
        c_cmd("emote", argument[0], argument[1], argument[2], 0)
}

function c_saveload(argument0) {
    /* debug */
    c_cmd("saveload", argument0, 0, 0, 0)
    if (argument0 == "save") {
        with (cutscene_object) {
            if (loadedState == 1) {
                loadedState = 0
                scr_cutscene_master_commands_initialize()
            }
        }
    }
}

function c_script_instance() {
    if (argument_count == 3) {
        c_cmd("script", argument[0], argument[1], argument[2], -3.14, -3.14, -3.14)
    if (argument_count == 4) {
        c_cmd("script", argument[0], argument[1], argument[2], argument[3], -3.14, -3.14)
    if (argument_count == 5) {
        c_cmd("script", argument[0], argument[1], argument[2], argument[3], argument[4], -3.14)
    if (argument_count == 6) {
        c_cmd("script", argument[0], argument[1], argument[2], argument[3], argument[4], argument[5])
}

function c_script_instance_stop(argument0, argument1) {
    c_cmd("script", argument0, argument1, -10, 0, 0, 0)
}

function c_shakestep(argument0, argument1) {
    c_cmd("autowalk", false)
    c_cmd("imageindex", 1)
    c_cmd("addxy", argument0, argument1)
    c_cmd("var", 0, "stepsound", 1)
    c_cmd("delaycmd", 15, "imageindex", 0)
    c_cmd("shakeobj")
}

function c_shakestep_x(argument0, argument1, argument2, argument3, argument4, argument5) {
    c_cmd("autowalk", false)
    c_cmd("imageindex", 1)
    c_cmd("addxy", argument0, argument1)
    if (argument5 == 1) {
        c_cmd("var", 0, "stepsound", 1)
    c_cmd("delaycmd", argument2, "imageindex", 0)
    c_cmd("shakeobj")
    if (argument4 > 1) {
        for (__argi = 1; __argi < argument4; __argi++) {
            c_cmd("delaycmd", (__argi * argument3), "imageindex", 1)
            c_cmd("delaycmd", (__argi * argument3), "addxy", argument0, argument1, 0, 0)
            if (argument5 == 1) {
                c_cmd("delaycmd", (__argi * argument3), "var", 0, "stepsound", 1, 0)
            c_cmd("delaycmd", ((__argi * argument3) + argument2), "imageindex", 0)
            c_cmd("delaycmd", (__argi * argument3), "shakeobj", 0)
        }
    }
}

function c_var_lerp() {
    if (argument_count < 5) {
        c_cmd("var", 0, argument[0], argument[1], argument[2], argument[3], 0)
    } else {
        c_cmd("var", 0, argument[0], argument[1], argument[2], argument[3], argument[4])
}

function c_var_lerp_instance() {
    if (argument_count < 6) {
        c_cmd("var", argument[0], argument[1], argument[2], argument[3], argument[4], 0)
    } else if (argument_count == 6) {
        c_cmd("var", argument[0], argument[1], argument[2], argument[3], argument[4], argument[5])
    } else if (argument_count == 7) {
        c_cmd("var", argument[0], argument[1], argument[2], argument[3], argument[4], (string(argument[5]) + string(argument[6])))
}

/******************************************************************************/
#endregion –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

function cutscene_actor_animate_sprite(_actor, _sprite, _start_frame, _end_frame, _speed, _addional_revolutions = 0, _repeats = 0) {
    cutscene_select_actor(_actor)
    .set_sprite({ sprite : _sprite })
    c_cmd("animate_actor", _start_frame, _end_frame, _speed, _addional_revolutions, _repeats)
}

function cutscene_select_actor(_actor_instance) {
    c_cmd("select", _actor_instance.actor_id)
}

function cutscene_walk(_direction, _speed, _duration) {
    var direction_word = ["d", "r", "u", "l"]
    c_cmd("walk", direction_word[_direction], _speed, _duration)
}

function cutscene_actor_walk(_actor, _direction, _speed, _duration) {
    cutscene_select_actor(_actor)
    c_cmd("autowalk_only", true)

    cutscene_walk(_direction, _speed, _duration) }

function cutscene_actor_move(_actor, _direction, _speed, _duration) {
    var direction_word = ["d", "r", "u", "l"]
    cutscene_select_actor(_actor)
    c_cmd("autowalk_only", false)
    c_cmd("move", direction_word[_direction], _speed, _duration, 0)
}

function cutscene_walk_synchronized(_actors, _direction, _speed, _duration) {
    for (var i = 0; i < array_length(_actors); i++) {
        cutscene_select_actor(_actors[i])
        cutscene_walk(_direction, _speed, _duration)
    }
}

/******************************************************************************/
#endregion –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– COMMANDS ––––––––––––––––––––
/******************************************************************************/

function scr_findactorinstance(argument0) {
    with (cutscene_object) {
        __foundactor = -1
        for (_jjj = 0; _jjj < 20; _jjj++) {
            if (actor_name[_jjj] == argument0 and instance_exists(actor_id[_jjj])) {
                __foundactor = actor_id[_jjj]
        }
        return __foundactor;
    }
}

function scr_findactor(argument0) {
    with (cutscene_object) {
        __foundactor = -1
        for (_jjj = 0; _jjj < 20; _jjj++) {
            if (actor_name[_jjj] == argument0 and instance_exists(actor_id[_jjj])) {
                __foundactor = _jjj
        }
        return __foundactor;
    }
}

function scr_actor_setup(argument0, argument1, argument2) {
    _actorid = argument0
    _actorinstance = argument1
    _actorname = argument2
    cutscene_object.actor_id[_actorid] = _actorinstance
    cutscene_object.actor_name[_actorid] = _actorname
    with (_actorinstance) {
        number = argument0
        scr_set_facing_sprites(argument2)
    }
}

function scr_actor_setup_nofacing(argument0, argument1, argument2) {
    _actorid = argument0
    _actorinstance = argument1
    _actorname = argument2
    cutscene_object.actor_id[_actorid] = _actorinstance
    cutscene_object.actor_name[_actorid] = _actorname
    _actorinstance.name = _actorname
}

function scr_cutscene_loaded() {
    var __loadedState = 0
    if (cutscene_exists()) {
        if (cutscene_object.loadedState == 1) { __loadedState = 1 }
    }
    return __loadedState;
}

function scr_cutscene_loadstate() {
    for (var i = 0; i < 20; i++) {
        if (instance_exists(actor_id[i])) {
            if (actorSaved[i] == 1) {
                with (actor_id[i]) {
                    scr_instance_load_local_vars()
                }
            }
        }
    }
    for (var i = 0; i < 10; i++) {
        if (instance_exists(save_object[i])) {
            if (objectSaved[i] == 1) {
                with (save_object[i]) {
                    scr_instance_load_local_vars()
                }
            }
        }
    }
    for (var i = 0; i < array_length_1d(masterArray); i++) { variable_instance_set(id, masterArray[i], myVar[i]) }
    gamemaker_camera_set_viewposition({ camera : view_camera[0], x : remCameraX, y : remCameraY })
    gamemaker_constructinstance_destroy({ instance : [obj_panner, obj_move_actor, obj_move_to_point, instance_shake_object, deltarune_dialoguer_construct, typewriter_object, dialogue_face_object, obj_jump_to_point, obj_stickto, obj_lerpvar] })
    screen_shake_effect_destroy()
    loadedState = 1
    waiting = 0
    scr_cutscene_master_commands_initialize()
}

function scr_cutscene_savestate() {
    masterArray = variable_instance_get_names(id)
    for (var i = 0; i < array_length_1d(masterArray); i++) { myVar[i] = variable_instance_get(id, masterArray[i]) }
    remCameraX = gamemaker_camera_get_x_viewposition({ camera : view_camera[0] })
    remCameraY = gamemaker_camera_get_y_viewposition({ camera : view_camera[0] })
    for (var i = 0; i < 20; i++) {
        actorSaved[i] = 0
        if (instance_exists(actor_id[i])) {
            actorSaved[i] = 1
            with (actor_id[i]) {
                scr_instance_save_local_vars()
            }
        }
    }
    for (var i = 0; i < 10; i++) {
        objectSaved[i] = 0
        if (instance_exists(save_object[i])) {
            objectSaved[i] = 1
            with (save_object[i]) {
                scr_instance_save_local_vars()
            }
        }
    }
}

function scr_cutscene_master_commands_initialize() {
    for (var i = 0; i < 800; i++) {
        command[i] = "terminate"
        command_actor[i] = 99999999
        command_arg1[i] = 0
        command_arg2[i] = 0
        command_arg3[i] = 0
        command_arg4[i] = 0
        command_arg5[i] = 0
        command_arg6[i] = 0
    }
    current_command = 0
    maximum_command = 1
}

function c_cmd(argument0, argument1, argument2, argument3, argument4, argument5, argument6) {
    if (!cutscene_exists()) { return }
        __cs_i = (cutscene_object.maximum_command - 1)
        cutscene_object.command[__cs_i] = argument0
        cutscene_object.command_arg1[__cs_i] = argument1 ?? 0
        cutscene_object.command_arg2[__cs_i] = argument2 ?? 0
        cutscene_object.command_arg3[__cs_i] = argument3 ?? 0
        cutscene_object.command_arg4[__cs_i] = argument4 ?? 0
        cutscene_object.command_arg5[__cs_i] = argument5 ?? 0
        cutscene_object.command_arg6[__cs_i] = argument6 ?? 0
        with (cutscene_object) { maximum_command++ }
    }
}

function scr_cutscene_commands() {
    if (_c == "delaycmd") {
        // do later
    }

    if (_c == "walk") {
        if (!instant) {
            actor_move = gamemaker_object_create_instance(0, 0, obj_move_actor)
            actor_move.target = command_actor[i]
            actor_move.direction_word = command_arg1[i]
            actor_move.speed = command_arg2[i]
            actor_move.time = command_arg3[i]
            with (actor_move) {
                event_user(8)
            }
        } else {
            command_actor[i].x += lengthdir_x((command_arg2[i] * command_arg3[i]), ((scr_facing_letter_to_number(command_arg1[i]) * 90) - 90))
            command_actor[i].y += lengthdir_y((command_arg2[i] * command_arg3[i]), ((scr_facing_letter_to_number(command_arg1[i]) * 90) - 90))
        }
    }

    // MOVE NO RESET
    if (_c == "move") {
        actor_move = gamemaker_object_create_instance(0, 0, obj_move_actor_no_reset)
        actor_move.target = command_actor[i]
        actor_move.direction_word = command_arg1[i]
        actor_move.speed = command_arg2[i]
        actor_move.time = command_arg3[i]
        with (actor_move) event_user(8)
    }

    if (_c == "walkdirect") {
        if (!instant) {
            actor_move = gamemaker_object_create_instance(0, 0, obj_move_to_point)
            actor_move.target = command_actor[i]
            actor_move.movex = command_arg1[i]
            actor_move.movey = command_arg2[i]
            actor_move.movemax = command_arg3[i]
            if (command_arg1[i] == 0 ) { actor_move.movex = command_actor[i].x }
            if (command_arg2[i] == 0) { actor_move.movey = command_actor[i].y }
        } else {
            command_actor[i].x = command_arg1[i]
            command_actor[i].y = command_arg2[i]
        }
    }

    if (_c == "msgside") {
        if (command_arg1[i] == "any") { msgside = -1 }
        if (command_arg1[i] == "top") { msgside = 0 }
        if (command_arg1[i] == "bottom") { msgside = 1 }
        if (command_arg1[i] == "zurasuon") { zurasu = 1 }
        if (command_arg1[i] == "zurasuoff") { zurasu = 0 }
    }

    if (_c == "emote") {
        if (!instant) {
            command_actor[i].__arg0 = command_arg1[i]
            command_actor[i].__arg1 = command_arg2[i]
            command_actor[i].__arg2 = command_arg3[i]

			with (command_actor[i]) {
				var _creation_arguments = {
					target_object_instance : self,
					emote_type             : __arg0,
					lifetime_frames        : __arg1,
				}
				if (command_arg3[i] == 0 ) { _creation_arguments.xoffset = __arg2 }
				new EmoteBubble(_creation_arguments)
			}
        }
    }

    if (_c == "speaker") { scr_speaker(command_arg1[i]) }

    if (_c == "instancecreate") {
        _instance = gamemaker_object_create_instance(command_arg1[i], command_arg2[i], command_arg3[i])
        if (instance_exists(cutscene_object)) { cutscene_object.cutscene_instance = _instance }
    }

    if (_c == "var") {
        if (instant) {
            if (command_arg5[i] != 0) {
                command_arg3[i] = command_arg4[i]
                command_arg5[i] = 0
            }
        }
        __chosenid = 0
        if (command_arg1[i] == 0 ) { __chosenid = command_actor[i] }
        else { __chosenid = command_arg1[i] }
        if (command_arg5[i] == 0) { variable_instance_set(__chosenid, command_arg2[i], command_arg3[i]) }
        } else if (command_arg6[i] == 0) { scr_lerpvar_instance(__chosenid, command_arg2[i], command_arg3[i], command_arg4[i], command_arg5[i]) }
        } else if (!is_string(command_arg6[i])) { scr_lerpvar_instance(__chosenid, command_arg2[i], command_arg3[i], command_arg4[i], command_arg5[i], command_arg6[i], "in") }
        else {
            var __easetype = real(string_digits(command_arg6[i]))
            if (string_char_at(command_arg6[i], 1) == "-") {
                __easetype *= -1
                command_arg6[i] = string_delete(command_arg6[i], 1, 1)
            }
            command_arg6[i] = string_delete(command_arg6[i], 1, 1)
            scr_lerpvar_instance(__chosenid, command_arg2[i], command_arg3[i], command_arg4[i], command_arg5[i], __easetype, command_arg6[i])
        }
    }

    if (_c == "script") {
        if (command_arg3[i] != -10) {
            var __sarg1 = command_arg2[i]
            var __sarg2 = command_arg3[i]
            var __sarg3 = command_arg4[i]
            var __sarg4 = command_arg5[i]
            var __sarg5 = command_arg6[i]
            var __sarg_counted = 3
            if (command_arg4[i] == -3.14) { __sarg_counted-- }
            if (command_arg5[i] == -3.14) { __sarg_counted-- }
            if (command_arg6[i] == -3.14) { __sarg_counted-- }
            if (command_arg3[i] == 0) {
                if (__sarg_counted == 0) {
                    with (command_arg1[i])
                    __sarg1()
                } if (__sarg_counted == 1) {
                    with (command_arg1[i])
                    __sarg1(__sarg3)
                } if (__sarg_counted == 2) {
                    with (command_arg1[i])
                    __sarg1(__sarg3, __sarg4)
                } if (__sarg_counted == 3) {
                    with (command_arg1[i])
                    __sarg1(__sarg3, __sarg4, __sarg5)
                }
            } else {
                if (__sarg_counted == 0) {
                    with (command_arg1[i])
                        scr_script_repeat(__sarg1, -1, __sarg2)
                } if (__sarg_counted == 1) {
                    with (command_arg1[i])
                        scr_script_repeat(__sarg1, -1, __sarg2, __sarg3)
                } if (__sarg_counted == 2) {
                    with (command_arg1[i])
                        scr_script_repeat(__sarg1, -1, __sarg2, __sarg3, __sarg4)
                } if (__sarg_counted == 3) {
                    with (command_arg1[i])
                        scr_script_repeat(__sarg1, -1, __sarg2, __sarg3, __sarg4, __sarg5)
                }
            }
        } else {
            var __commandtarget = command_arg1[i]
            var __commandscript = command_arg2[i]
            with (obj_script_delayed) {
                if (script == __commandscript and target == __commandtarget) {
                    instance_destroy()
                    alarm[0] = -5
                    max_time = -300
                }
            }
        }
    }

    if (_c == "autowalk") {
        command_actor[i].auto_facing = command_arg1[i]
        command_actor[i].auto_walk = command_arg1[i]
    }

    if (_c == "autowalk_only") {
        command_actor[i].auto_walk = command_arg1[i]
    }

    if (_c == "autofacing") { command_actor[i].auto_facing = command_arg1[i] }

    if (_c == "autodepth") { command_actor[i].auto_depth = command_arg1[i] }

    if (_c == "depth") { command_actor[i].depth = command_arg1[i] }

    if (_c == "depthobject") { command_actor[i].depth = (command_arg1[i].depth + command_arg2[i]) }

    if (_c == "flip") {
        command_actor[i].__flipvalue = command_arg1[i]
        with (command_actor[i]) scr_flip(__flipvalue)
    }

    if (_c == "facing") {
        if (command_arg1[i] == "l" or command_arg1[i] == "d" or command_arg1[i] == "r" or command_arg1[i] == "u") { scr_actor_facing(command_actor[i], command_arg1[i]) } else {
            command_actor[i]._setfacing = command_arg1[i]
            with (command_actor[i])
                scr_set_facing_sprites(_setfacing)
        }
    }

    if (_c == "halt") {
        with (command_actor[i]) scr_halt()
    }

    if (_c == "spin") {
        if (instance_exists(command_actor[i])) { command_actor[i].spinspeed = command_arg1[i] }
    }

    if (_c == "stick") {
        if (command_arg1[i] == "on") {
            var _stickobj = command_arg2[i]
            var _stickdepth = command_arg3[i]
            with (command_actor[i])
                scr_stickto(_stickobj, _stickdepth)
        } else {
            with (command_actor[i]) scr_stickto_stop()
        }
    }

    if (_c == "specialsprite") {
        command_actor[i].sprite_index = command_actor[i].specialsprite[command_arg1[i]]
        command_actor[i].specialspriteno = command_arg1[i]
    }

    if (_c == "imagespeed") { command_actor[i].image_speed = command_arg1[i] }

    if (_c == "imageindex") { command_actor[i].image_index = command_arg1[i] }

    if (_c == "animate") {
        if (instance_exists(command_actor[i]) and (!instant)) {
            command_actor[i].__arg0 = command_arg1[i]
            command_actor[i].__arg1 = command_arg2[i]
            command_actor[i].__arg2 = command_arg3[i]
            with (command_actor[i])
                scr_animate(__arg0, __arg1, __arg2)
        }
    }
    // ANIMATE ACTOR
    if (_c == "animate_actor") {
        if (instance_exists(command_actor[i])) {
            var actor_animator = gamemaker_object_create_instance(command_actor[i].x, command_actor[i].y, obj_actor_animator)
            actor_animator.target = command_actor[i]

            actor_animator.animation_start_frame = command_arg1[i]
            actor_animator.animation_end_frame = command_arg2[i]
            actor_animator.animation_image_speed = command_arg3[i]
            actor_animator.animation_addional_revolutions = command_arg4[i]
            actor_animator.animation_runs = command_arg5[i]
        }
    }

    if (_c == "mus" or _c == "music") {
        if (command_arg1[i] == "loop") {  }
        if (command_arg1[i] == "play") { /* play -> (deltarune_get_overworldbgm()) */ }
        if (command_arg1[i] == "stop") { deltarune_get_overworldbgm().stop() }
        if (command_arg1[i] == "free_all") { gamemaker_sound_stop({ sound : "MUSIC_AUDIO_LABEL" }) }
        if (command_arg1[i] == "free") { deltarune_get_overworldbgm().stop() }
        if (command_arg1[i] == "pause") { deltarune_get_overworldbgm().pause() }
        if (command_arg1[i] == "resume") { deltarune_get_overworldbgm().resume() }
        if (command_arg1[i] == "init") { gamemaker_sound_play({ sound : command_arg2[i] }) }
        if (command_arg1[i] == "initplay") { gamemaker_sound_play({ sound : command_arg2[i] }) }
        if (command_arg1[i] == "initloop") { gamemaker_sound_play({ sound : command_arg2[i], loop : true }) }
        if (command_arg1[i] == "volume") { gamemaker_sound_set_gain(deltarune_get_overworldbgm(), command_arg2[i], command_arg3[i]) }
        if (command_arg1[i] == "pitch") { gamemaker_sound_set_pitch(deltarune_get_overworldbgm(), command_arg2[i]) }
        if (command_arg1[i] == "pitchtime") { gamemaker_sound_set_pitch(deltarune_get_overworldbgm(), command_arg2[i], command_arg3[i]) }
        if (command_arg1[i] == "loopsfx") { mysound = gamemaker_sound_play({ loop : true, sound : command_arg2[i]) }
        if (command_arg1[i] == "loopsfxpitch") { gamemaker_sound_set_pitch(mysound, command_arg2[i]) }
        if (command_arg1[i] == "loopsfxpitchtime") { gamemaker_sound_set_pitch(mysound, command_arg2[i], command_arg3[i]) }
        if (command_arg1[i] == "loopsfxstop") { gamemaker_sound_stop({ sound : mysound }) }
        if (command_arg1[i] == "loopsfxvolume") { gamemaker_sound_set_gain(mysound, command_arg2[i], command_arg3[i]) }
    }

    if (_c == "fadeout") {
        if (command_arg1[i] > 0 ) {
            fade_out_instance = create_fade_out(command_arg1[i])
            if (command_arg2[i] != 0) { fade_out_instance.image_blend = command_arg2[i] }
        } if (command_arg1[i] < 0 ) {
            if (instance_exists(fade_out_object)) {
                fade_out_object.image_alpha = 1
                fade_out_object.fadespeed = (1 / command_arg1[i])
                fade_out_object.fadein = 1
            }
        }
    }

    if (_c == "panspeed") {
        if (!instant) { scr_pan(command_arg1[i], command_arg2[i], command_arg3[i]) } else {
            gamemaker_camera_set_viewposition({ camera : view_camera[0], x : gamemaker_camera_get_x_viewposition({ camera : view_camera[0] }) + command_arg1[i] * command_arg3[i], y : gamemaker_camera_get_y_viewposition({ camera : view_camera[0] }) + command_arg2[i] * command_arg3[i] })
        }
    }

    if (_c == "pan") {
        if (!instant) {
            scr_pan_lerp(command_arg1[i], command_arg2[i], command_arg3[i])
        } else {
            gamemaker_camera_set_viewposition({ camera : view_camera[0], x : command_arg1[i], y : command_arg2[i] })
        }
    }

    if (_c == "panobj") {
        scr_pan_to_obj(command_arg1[i], command_arg2[i])
        if (instant) {
            with (obj_panner) {
                gamemaker_camera_set_viewposition({ camera : view_camera[0], x : finalx, y : finaly })
                instance_destroy()
            }
        }
    }

    if (_c == "pannable") {
        if (instance_exists(overworld_character_object)) { overworld_character_object.cutscene = command_arg1[i] }
    }

    if (_c == "shakex") {
        if (!instant) {
            myshake = deltarune_screenshake_create()
            myshake.shakex = command_arg1[i]
            myshake.shakey = command_arg2[i]
            myshake.shakespeed = command_arg3[i]
        }
    }

    if (_c == "shakeobj") {
        if (!instant) {
            with (command_actor[i]) create_shake_effect()
        }
    }

    if (_c == "jump") {
        if (instance_exists(command_actor[i])) {
            command_actor[i].__arg0 = command_arg1[i]
            command_actor[i].__arg1 = command_arg2[i]
            command_actor[i].__arg2 = command_arg3[i]
            command_actor[i].__arg3 = command_arg4[i]
            if (!instant) {
                with (command_actor[i]) scr_jump_to_point(__arg0, __arg1, __arg2, __arg3)
            } else {
                command_actor[i].x = command_arg1[i]
                command_actor[i].y = command_arg2[i]
            }
        }
    }

    if (_c == "jumpsprite") {
        if (instance_exists(command_actor[i])) {
            command_actor[i].__arg0 = command_arg1[i]
            command_actor[i].__arg1 = command_arg2[i]
            command_actor[i].__arg2 = command_arg3[i]
            command_actor[i].__arg3 = command_arg4[i]
            command_actor[i].__arg4 = command_arg5[i]
            command_actor[i].__arg5 = command_arg6[i]
            if (!instant) {
                with (command_actor[i])
                    scr_jump_to_point_sprite(__arg0, __arg1, __arg2, __arg3, __arg4, __arg5)
            } else {
                command_actor[i].x = command_arg1[i]
                command_actor[i].y = command_arg2[i]
            }
        }
    }

    if (_c == "addxy") {
        command_actor[i].x += command_arg1[i]
        command_actor[i].y += command_arg2[i]
    }

    if (_c == "arg_objectxy") {
        command_arg1[(i + 1)] = (command_arg1[i].x + command_arg2[i])
        command_arg2[(i + 1)] = (command_arg1[i].y + command_arg3[i])
    }

    if (_c == "actortoobject") {
        gamemaker_object_create_instance(command_actor[i].x, command_actor[i].y, command_arg1[i])
        command_actor[i].visible = false
    }

    // CUSTOM
    if (_c == "actor_to_character") {
        _input_actor_id = command_arg1[i]
        _input_actor_name = actor_name[_input_actor_id]
        _input_actor_instance = actor_id[_input_actor_id]

        if(_input_actor_instance.main == true) {
            overworld_character_object.x = _input_actor_instance.x
            overworld_character_object.y = _input_actor_instance.y
            overworld_character_object.visible = true
            _input_actor_instance.visible = false
            if (_input_actor_instance.facing == "d") { MAIN_CHARACTER_FACING_DIRECTION = DIRECTION.DOWN } if (_input_actor_instance.facing == "r") { MAIN_CHARACTER_FACING_DIRECTION = DIRECTION.RIGHT } if (_input_actor_instance.facing == "u") { MAIN_CHARACTER_FACING_DIRECTION = DIRECTION.UP } if (_input_actor_instance.facing == "l") { MAIN_CHARACTER_FACING_DIRECTION = DIRECTION.LEFT }
        } else {
            for (lll = 0; lll < 2; lll++) {
                if (instance_exists(CATERPILLAR_CHARACTERS[lll]) and _input_actor_name == CATERPILLAR_CHARACTERS[lll].name) {
                    CATERPILLAR_CHARACTERS[lll].x = _input_actor_instance.x
                    CATERPILLAR_CHARACTERS[lll].y = _input_actor_instance.y
                    scr_caterpillar_facing_single(_input_actor_name, _input_actor_instance.facing)
                    CATERPILLAR_CHARACTERS[lll].visible = true
                    _input_actor_instance.visible = false
                }
            }
        }
    }

    if (_c == "actortokris") {
        for (var jjj = 0; jjj < 20; jjj++) {
            if (actor_name[jjj] == "kris" and instance_exists(actor_id[jjj])) {
                overworld_character_object.x = actor_id[jjj].x
                overworld_character_object.y = actor_id[jjj].y
                overworld_character_object.visible = true
                actor_id[jjj].visible = false
                if (actor_id[jjj].facing == "d") { MAIN_CHARACTER_FACING_DIRECTION = DIRECTION.DOWN }
                if (actor_id[jjj].facing == "r") { MAIN_CHARACTER_FACING_DIRECTION = DIRECTION.RIGHT }
                if (actor_id[jjj].facing == "u") { MAIN_CHARACTER_FACING_DIRECTION = DIRECTION.UP }
                if (actor_id[jjj].facing == "l") { MAIN_CHARACTER_FACING_DIRECTION = DIRECTION.LEFT }
            }
        }
    }

    if (_c == "actortocaterpillar") {
        _caterpillar_moved = 0
        for (lll = 0; lll < 2; lll++) {
            if (instance_exists(CATERPILLAR_CHARACTERS[lll])) {
                for (var jjj = 0; jjj < 20; jjj++) {
                    if (actor_name[jjj] == CATERPILLAR_CHARACTERS[lll].name and instance_exists(actor_id[jjj])) {
                        if (CATERPILLAR_CHARACTERS[lll].x != actor_id[jjj].x) {
                            CATERPILLAR_CHARACTERS[lll].x = actor_id[jjj].x
                            _caterpillar_moved = 1
                        } if (CATERPILLAR_CHARACTERS[lll].y != actor_id[jjj].y) {
                            CATERPILLAR_CHARACTERS[lll].y = actor_id[jjj].y
                            _caterpillar_moved = 1
                        }
                        scr_caterpillar_facing_single(actor_name[jjj], actor_id[jjj].facing)
                        CATERPILLAR_CHARACTERS[lll].visible = true
                        actor_id[jjj].visible = false
                    }
                }
            }
        } if (_caterpillar_moved == 1) {
            with (party_follower_object)
                scr_caterpillar_interpolate()
        }
    }

    if (_c == "saveload") {
        if (command_arg1[i] == "save") { scr_cutscene_savestate() }
        if (command_arg1[i] == "load") { scr_cutscene_loadstate() }
    }

    if (_c == "select") {
        actor_selected = actor_name[command_arg1[i]]
        actor_selected_id = actor_id[command_arg1[i]]
    }

    if (_c == "waitbox") {
        if (!instant) {
            waiting = 1
            cs_wait_box = command_arg1[i]
            breakme = 1
        }
    }

    if (_c == "terminatekillactors") {
        kill_actors = 1
        terminate_this_frame = 1
        breakme = 1
    }
}

/******************************************************************************/
#endregion –––––––––––––––––––– COMMANDS ––––––––––––––––––––
/******************************************************************************/
