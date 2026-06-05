# GameMaker Library

### Macros

You can also split macros over multiple lines using the \ character to show where the line breaks are. An example would be something like:

```
#macro HELLO show_debug_message("Hello" + \
string(player_name) + \
", how are you today?");
```

# Naming Rules

enabled `preserve trailing and leading underscores`

| | |
| - | - |
| Room | `room_` |
| Sprite | `sprite_` |
| | `object_` |
| | `font_` |
| | `shader_` |
| | |

something_controller_generic   : file defines constructor for controller struct for <something>
something_constructors_generic : file defines regular constructor functions for <something>
something_functions_generic    : file contains script functions for <something>

## GameMaker Asset Types

## Object Events

`gamemaker_object_get_eventmethod`
`gamemaker_construct_get_eventmethod`

gamemaker_object_instance_execute_parentevent

execute_event
construct_execute_event
execute_parentevent

get_parentevent
execute_parentevent

get_parentobject_eventmethod()()

get_object().get_parent().get_eventmethod({ event : "" })(argument0)


# GameMaker Library Mapping

`private`
`builtin`

