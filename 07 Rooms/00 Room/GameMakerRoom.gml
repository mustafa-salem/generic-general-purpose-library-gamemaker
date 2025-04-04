/******************************************************************************/
#region    –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

// feather disable all
// global.entrance

/// ----------------------------------------------------------------------------
/*

# IDENTIFIERS
* gamemaker_room_get
* gamemaker_room_get_id
* gamemaker_room_get_handle
* gamemaker_room_get_name

#
* gamemaker_room_get_displayname

# EXISTANCE
* gamemaker_room_exists
* gamemaker_room_create

# DIMENSIONS
* gamemaker_room_get_x_dimension
* gamemaker_room_get_y_dimension
* gamemaker_room_set_dimensions

# CAMERA & VIEW
*

* gamemaker_room_get_persistent
* gamemaker_room_set_persistent

# OTHER
* gamemaker_room_set_event
* gamemaker_room_goto
* gamemaker_room_restart

*/
/// ----------------------------------------------------------------------------

/******************************************************************************/
#endregion –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/

function GameMakerRoom() constructor {

    static private = {
        /// @type {array<struct.GameMakerRoom>}
        ///
        rooms    : [],
        /// @type {number|string|undefined}
        ///
        entrance : undefined,
    }

    self.private = {
        room_start_event : undefined,
        room_end_event   : undefined,
    }

    static create = function(parameters) {
        return gamemaker_room_create(parameters)
    }

    static get = function(parameters) {

    }

    self.get = method(self, get)

    static get_id = function(parameters) {
        return gamemaker_room_get_id(parameters)
    }

    self.get_id = method(self, get_id)

    static get_handle = function(parameters) {
        return gamemaker_room_get_handle(parameters)
    }

    self.get_handle = method(self, get_handle)

    static get_name = function(parameters) {
        return gamemaker_room_get_name(parameters)
    }

    self.get_name = method(self, get_name)

    self.create = function(parameters) {
        parameters.room = self
        return GameMakerRoom.create(parameters)
    }

    static set_event = function(arguments) {
        var _room_asset       = arguments[$ "room_asset"]
        var _room_start_event = arguments[$ "room_start_event"]
        // bind room_start_event function to room asset instance scope
        if (is_callable(_room_start_event)) {
            _room_start_event = method(_room_asset, _room_start_event)
        }
        _room_asset.private.room_start_event = _room_start_event
        return self
    }

    static add_label = function(arguments) {
        // add_label
        // remove_label
        // get_labels
        // set_labels
        return _return
    }

    self._ = method(self, _)

    static go_to = method(static_get(GameMakerRoom), function(parameters) {
        return gamemaker_room_goto(parameters)
    })

    self.go_to = function(parameters = {}) {
        parameters.room = self
        return GameMakerRoom.go_to(parameters)
    }

    CONSTRUCTOR_INITIALIZATION_CODE(function() {
        for (var _room_index = room_first; _room_index <= room_last; _room_index++) {
            GameMakerRoom.create({ room_asset : _room_index })
        }
    })

}

/// ----------------------------------------------------------------------------
/// @function room_label_create(parameters)
/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {type} parameter_name
/// <parameter_description>
///
/// ----------------------------------------------------------------------------
/// @returns {type}
/// <return_description>
/// ----------------------------------------------------------------------------
function room_label_create(parameters = {}) {
    return _return
}

function RoomLabel() constructor {

}

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/
