# Objects

## TODO

* `"precreate_event"`
* `create_event_sealing_dark_fountain`

## Keywords

"alarm_0"
"alarm_1"
"alarm_2"
"alarm_3"
"alarm_4"
"alarm_5"
"alarm_6"
"alarm_7"
"alarm_8"
"alarm_9"
"alarm_10"
"alarm_11"

"collision"

# Object Events

"No matter if an event has sub-events or not, its "default" event is always referred to by event number 0."

| Name | `event_type` `event_number` | Filename |  |
| - | - | - | - |
| `Create Event` | `ev_create` `0` | `Create_0.gml` | |
| `Destroy Event` | `ev_destroy` `0` | `Destroy_0.gml` | |
| `Clean Up Event` | `ev_cleanup` `0` | `CleanUp_0.gml` | |
| `Step Event` | `ev_step` `ev_step_normal` | `Step_0.gml` | |
| `Begin Step Event` | `ev_step` `ev_step_begin` | `Step_1.gml` | |
| `End Step Event` | `ev_step` `ev_step_end` | `Step_2.gml` | |
| `Alarm {0..11} Event` | `ev_alarm` `{0..11}` | `Alarm_{0..11}.gml` | |
| `Draw Event` | `ev_draw` `ev_draw_normal` | `Draw_0.gml` | `draw_event` |
| `Draw GUI Event` | `ev_draw` `ev_gui` | | `"draw_gui_event"` |
| `Draw Begin Event` | `ev_draw` `ev_draw_begin` | | `"draw_begin_event"` |
| `Draw End Event` | `ev_draw` `ev_draw_end` | | `"draw_end_event"` |
| `Draw GUI Begin Event` | `ev_draw` `ev_gui_begin` | |  "draw_gui_begin_event" |
| `Draw GUI End Event` | `ev_draw` `ev_gui_end` | | `"draw_gui_end_event"` |
| `Pre-Draw Event` | `ev_draw` `ev_draw_pre` | | `"pre_draw_event"` |
| `Post-Draw Event` | `ev_draw` `ev_draw_post` | | `"post_draw_event"` |
| `Collision Event <>` | `ev_collision` `index of the object to check.` | | `collision_event` |
| `Outside Room Event` | `ev_other` `ev_outside` | | `` |
| `Intersect Boundary Event` | `ev_other` `ev_boundary` | | `` |
| `Outside View Event` | `ev_other` `ev_outside_view0...7` | | `` |
| `Intersect View Boundary Event` | `ev_other` `ev_boundary_view0...7` | | `` |
| `Game Start Event`| `ev_other` `ev_game_start` | | `"game_start_event"` |
| `Game End Event` | `ev_other` `ev_game_end` | | "game_end_event" |
| `Room Start Event` | `ev_other` `ev_room_start` | | `` |
| `Room End Event` | `ev_other` `ev_room_end` | | `` |
| `Path Ended Event` | `ev_other` `ev_end_of_path` | | `` |
| `Broadcast Message Event` | `ev_other` `ev_broadcast_message` | | `` |
| `User Event {0..15}` | `ev_other` `ev_user{0..15}` | `Other_{10..25}.gml` |

[0, 15]

| `event_type` | `event_number` | Name |  |  |
| ----- | ----- | ----- | ----- | ----- |
| `` | `` | `Window Resize Event` | `` | `` | |
| `ev_mouse` | `` | `Mouse Event <>` | `` | `` | |
| `ev_keyboard` | `any key code` | `Key Down Event <>` | `` | `` | |
| `ev_keypress` | `any key code` | `Key Pressed Event <>` | `` | `` | |
| `ev_keyrelease` | `any key code` | `Key Up Event <>` | `` | `` | |
| `ev_gesture` | `` | `Gesture Event <>` | `` | `` | |
| `ev_other` | `ev_animation_end` | `Animation End Event` | `` | `` | |
| `ev_other` | `ev_animation_update` | `Animation Update Event` | `` | `` | |
| `ev_other` | `ev_animation_event` | `Animation Event` | `` | `` | |
| `` | `` | `Wallpaper Subscription DataEvent` | `` | `` | |
| `` | `` | `Asynchronous Event` | `` | `` | |
| `` | `` | `Event` | `` | `` | |
| `` | `` | `Event` | `` | `` | |
| `` | `` | `Event` | `` | `` | |
| `` | `` | `Event` | `` | `` | |
| `` | `` | `Event` | `` | `` | |
| `` | `` | `Event` | `` | `` | |
| `` | `` | `Event` | `` | `` | |

## Object Assets

#### Namespace

* `global[$ "#gamemaker"]`
* `global[$ "#gamemaker"][$ "object"]`

#### Object Assets

GameMakerObject

Single
* `gamemaker_object_instantiate`
* `gamemaker_object_get_instances`
* `gamemaker_object_get_instancecount`

Multiple
* `gamemaker_objects_`

* `get_tags`
* `set_tags`
* `add_tags`
* `remove_tags`
* `has_tags`
* `hasany_tag`
* `get_tagcount`

| Built-In Function | Library Function | Library Method | 
| -------- | -------- | -------- |
| `object_exists` | `` |  |
| `object_get_name` | `` |  |
| `object_get_mask` | `` |  |
| `object_set_mask` | `` |  |
| `object_get_parent` | `` |  |
| `object_get_persistent` | `` |  |
| `object_set_persistent` | `` |  |
| `object_get_solid` | `` |  |
| `object_set_solid` | `` |  |
| `object_get_sprite` | `` |  |
| `object_set_sprite` | `` |  |
| `object_get_visible` | `gamemaker_object_get_visible` | `get_visible` |
| `object_set_visible` | `gamemaker_object_set_visible` | `set_visible` |
| `object_get_physics` | `` |  |
| `object_is_ancestor` | `gamemaker_object_is_instanceof` | `is_instanceof` |

| Variable | — | — | 
| -------- | -------- | -------- |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |

## Object Instances

`GameMakerObjectInstance`

##### Function Reference
| Function | — | — | 
| ----- | ----- | ----- |
| `gamemaker_objectinstance` | `` |  |
| `gamemaker_objectinstance_exists` | `` |  |
| `gamemaker_objectinstance_set_position` | `` |  |
| `gamemaker_object_instance_set_creationcode` | `` |  |
| `gamemaker_object_instance_set_event` | `` |  |
| `gamemaker_object_instance_set_eventhandler` | `` |  |
| `gamemaker_object_instance_trigger_event` | `` |  |
| `gamemaker_object_instance_execute_eventmethod` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |

##### Method Reference
| Method | — | — | 
| ----- | ----- | ----- |
| `destroy` | `` |  |
| `exists` | `` |  |
| `set_position` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |
| `` | `` |  |

##### Function Reference

| Built-In Function | Library Function | Library Method | 
| ----- | ----- | ----- |
| `instance_create_layer` | `` |  |
| `instance_create_depth` | `` |  |
| `instance_destroy` | `` |  |
| `instance_exists` | `gamemaker_objectinstance_exists` |  |
| `instance_change` | `` |  |
| `instance_copy` | `` |  |
| `instance_find` | `gamemaker_object_get_instances` |  |
| `instance_furthest` | `` |  |
| `instance_nearest` | `` |  |
| `instance_number` | `gamemaker_object_get_instancecount` |  |
| `instance_place` | `` |  |
| `instance_place_list` | `` |  |
| `instance_position` | `` |  |
| `instance_position_list` | `` |  |
| `instance_id_get` | `` |  |
| `` | `` |  |

| name | new | notes | 
| ----- | ----- | ----- |
| `alarm_get` | `` |  |
| `alarm_set` | `` |  |

##### Variable Reference

###### Global Variables
| Variable | new | notes | 
| ----- | ----- | ----- |
| `instance_id` | `` |  |
| `instance_count` | `gamemaker_object_get_instancecount` |  |

```
{
    x_position             : ,
    y_position             : ,
    z_position             : ,
    x_velocity             : ,
    y_velocity             : ,
    velocity_magnitude     : ,
    velocity_direction     : ,
    friction_magnitude     : ,
    x_acceleration         : ,
    y_acceleration         : ,
    acceleration_magnitude : ,
    acceleration_direction : ,
}
# GENERAL
## id
## object_index
* get_object
* get_object_name
* get_object_handle
* get_object_id
## visible
* get_visible
* set_visible
## solid
## persistent
* get_persistent
* set_persistent
## alarm
# POSITION
## x
* get_x_position
* set_x_position
## y
* get_y_position
* set_y_position
# depth
* get_z_position
* set_z_position
## layer
get_layer
set_layer
# xstart
# ystart
# xprevious
# yprevious
# bbox_bottom
# bbox_left
# bbox_right
# bbox_top
* get_boundingbox_x_position
* get_boundingbox_y_position
* get_boundingbox_x_dimension
* get_boundingbox_y_dimension
* get_boundingbox_x_alignment
* get_boundingbox_y_alignment
* get_boundingbox_x_offset
* get_boundingbox_y_offset
# DIMENSIONS
## sprite_width
get_x_dimension
## sprite_height
## sprite_xoffset
## sprite_yoffset
## image_xscale
## image_yscale
# ROTATION
## image_angle
get_x_rotation
set_x_rotation
get_y_rotation
set_y_rotation
get_z_rotation
set_z_rotation
# MOVEMENT
## speed
* get_velocity_magnitude
* set_velocity_magnitude
## direction
* get_velocity_direction
* set_velocity_direction
## hspeed
* get_x_velocity
* set_x_velocity
## vspeed
* get_y_velocity
* set_y_velocity
## friction
* get_friction_magnitude
* set_friction_magnitude
* get_friction_direction == - get_velocity_direction
## gravity
* get_acceleration_magnitude
* set_acceleration_magnitude
## gravity_direction
* get_acceleration_direction
* set_acceleration_direction
* get_x_acceleration
* set_x_acceleration
* get_y_acceleration
* set_y_acceleration
# TEXTURE
## sprite_index
## mask_index
## image_index
## image_number
## image_speed
# BLENDING
## image_blend
* get_blend_colour
* set_blend_colour
## image_alpha
* get_blend_alpha
* set_blend_alpha
# PATHS
## path_index
## path_position
## path_positionprevious
## path_speed
## path_scale
## path_orientation
## path_endaction
# TIMELINES
## timeline_index
## timeline_running
## timeline_speed
## timeline_position
## timeline_loop
# SEQUENCES
## in_sequence
## sequence_instance
```