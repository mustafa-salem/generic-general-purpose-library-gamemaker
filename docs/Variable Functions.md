# Variable Functions

| GameMaker Language | TypeScript |
| - | - |
| `variable_instance_exists` | `` |
| `variable_instance_get_names` | `` |
| `variable_instance_names_count` | `` |
| `variable_instance_get` | `` |
| `variable_instance_set` | `` |
| `variable_global_exists` | `` |
| `variable_global_get` | `` |
| `variable_global_set` | `` |

Info Functions

| GameMaker Language | TypeScript |
| - | - |
| `nameof` | `` |
| `typeof` | `` |

Method Functions

| GameMaker Language | TypeScript |
| - | - |
| `method` | `gamemaker_callable_create_method` |
| `method_get_self` | `gamemaker_callable_get_context` |
| `method_get_index` | `gamemaker_callable_get_functionhandle` |
| `method_call` | `gamemaker_callable_call` |

Struct Functions

| GameMaker Language | TypeScript |
| - | - |
| `struct_exists` | `` |
| `struct_get` | `` |
| `struct_set` | `` |
| `struct_remove` | `` |
| `struct_get_names` | `` |
| `struct_names_count` | `` |
| `is_instanceof` | `instanceof` |
| `static_get` | `` |
| `static_set` | `` |
| `instanceof` | `.constructor`<br>`.constructor.name` |
| `struct_foreach` | `` |
| `struct_get_from_hash` | `` |
| `struct_set_from_hash` | `` |
| `struct_exists_from_hash` | `` |
| `struct_remove_from_hash` | `` |
| `variable_get_hash` | `` |
| `variable_clone` | `` |

Data Type Functions

| GameMaker Language | TypeScript |
| - | - |
| `is_string` | `typeof <foo> === "string"` |
| `is_real` | `Number.isFinite()` |
| `is_numeric` | `` |
| `is_bool` | `typeof _ === "boolean"` |
| `is_array` | `Array.isArray()` |
| `is_struct` | `` |
| `is_method` | `` |
| `is_callable` | `` |
| `is_ptr` | `` |
| `is_int32` | `` |
| `is_int64` | `` |
| `is_undefined` | `` |
| `is_nan` | `Number.isNaN()` |
| `is_infinity` | `!Number.isFinite()`<br>`=== Infinity` |
| `is_handle` | `` |
| `bool` | `` |
| `real` | `` |
| `ptr` | `` |
| `ref_create` | `` |
| `int64` | `` |
| `handle_parse` | `` |
