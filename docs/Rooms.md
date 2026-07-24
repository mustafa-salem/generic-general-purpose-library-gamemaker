# Rooms

## Global Variables

## Built-in Functions

| Identifier | Description |
| --- | --- |
| `room` | The handle for the current room. This is not a read-only variable, however DO NOT write to it, use `room_goto` instead. |
| `room_next(room);` | If there is no room after the one you input then an invalid room handle (-1) is returned. |
| `room_previous(room);` |  |
| `room_first` | read-only variable. The handle of the first room in the Room Manager. |
| `room_last` | read-only variable. The handle of the last room in the Room Manager. |

| Library Identifier | Description |
| --- | --- |
| `RoomAssetRegistry.lookup(room)` | The struct for the current room. |
| `RoomAssetRegistry.lookup(room_next)` |  |
| `RoomAssetRegistry.lookup(room_previous)` |  |
| `RoomAssetRegistry.lookup(room_first)` |  |
| `RoomAssetRegistry.lookup(room_last)` |  |

### Information

| Identifier | Description |
| --- | --- |
| `room_exists` |  |
| `room_get_name` |  |
| `room_get_info` | `` |

| Library Identifier | Description |
| --- | --- |
| `gamemaker_room_exists` | `` |
| `gamemaker_room_get_name` `.get_name` | `` |
| `` | `` |

### Switching Rooms

| Identifier | Description |
| --- | --- |
| `room_goto`<br>`room_goto_previous`<br>`room_goto_next` | `RoomManager.gotoRoom()` |
| `room_restart` |  |

### Modifying Rooms

| Identifier | Library |
| --- | --- |
| `room_add();` | `RoomManager.createRoomAsset({ name: String });` |
| `room_duplicate` | `` |
| `room_assign` | `` |
| `room_instance_add` | `` |
| `room_instance_clear` | `` |
| `room_width` `room_height` `room_set_width` `room_set_height` | `gamemaker_room_get_x_dimension` `.get_x_dimension` `gamemaker_room_get_y_dimension` `.get_y_dimension` `gamemaker_room_set_dimensions` `.set_dimensions` |
| `room_persistent` `room_set_persistent` | `gamemaker_room_get_persistent` `.get_persistent` `gamemaker_room_set_persistent` `.set_persistent` |
| `room_set_view_enabled` | `` |
| `room_get_viewport` `room_set_viewport` | `gamemaker_room_get_viewport` `.get_viewport` `gamemaker_room_set_viewport` `.set_viewport` |
| `room_get_camera` `room_set_camera` | `gamemaker_room_get_camera` `.get_camera` `gamemaker_room_set_camera` `.set_camera` |
