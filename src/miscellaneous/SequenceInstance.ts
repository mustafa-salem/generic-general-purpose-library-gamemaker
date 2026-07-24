/// 
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// @returns {type}
function gamemaker_sequence(parameters = {}) {
    return _return
}

/// GameMakerSequence
class SequenceGeneric() : AssetGeneric {

}

/// 
/// @param {type} parameter_name
/// @returns {Undefined}
function gamemaker_sequence_instance_destroy(parameters = {}) {
    elementID ??= this.elementID
    layer_sequence_destroy(elementID)
    return undefined
}

/// GameMakerSequenceInstance
class GameMakerSequenceInstance {

    destroy() {
        layer_sequence_destroy(elementID)
    }

    playhead_position(arguments) {
        if (arguments["frame"]) {
            var _frame = arguments.frame
            layer_sequence_headpos(elementID, _frame)
        }
        if (arguments["moment"]) {
            var _frame = moments[arguments.moment]
            layer_sequence_headpos(elementID, _frame)
        }
    }

    position(arguments) {
        if (arguments["x"]) {
            layer_sequence_x(elementID, arguments.x)
        }
        if (arguments["y"]) {
            layer_sequence_y(elementID, arguments.y)
        }
    }

    pause() {
        layer_sequence_pause(elementID)
    }

    play() {
        layer_sequence_play(elementID)
    }

    asset = arguments.asset
    layer = layer_create(arguments["depth"] ?? 0)
    var _x = arguments["x"] ?? 0
    var _y = arguments["y"] ?? 0
    var _pause = arguments["pause"] ?? false
    elementID = layer_sequence_create(layer, _x, _y, asset)
    if (_pause) { pause() }

    var moments = { }



}