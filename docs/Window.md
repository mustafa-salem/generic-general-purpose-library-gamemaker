# Window

The Game Window

The game you create happens in a window (even when fullscreen), and this window has a number of properties, like position, size, whether it is fullscreen, etc. These details are normally set automatically for you based on the room size and view ports enabled in combination with the settings from Game Options for the target platform, but you can change them during the game using the functions listed on this page.

NOTE These functions are for Windows, Ubuntu, macOS, GX.games and HTML5 targets only and may not work on any other device.

The following image illustrates how some general window functions relate and interact with each other:

Window Position example

IMPORTANT The above diagram shows the HTML5 runner. Even though the GX.games target runs in a browser, the window_get_width() and window_get_height() values returned on that target will be the same as browser_width and browser_height respectively.

The image above shows the game window drawn in a browser, but for the other targets, you can replace the browser with the display, so a function like window_get_y will return the position of the top of the game window relative to the display.

**Window Info**

| GameMaker Language | TypeScript |
| - | - |
| `window_device` DEPRECATED | - |
| `window_handle` | `Window.` |
| `window_has_focus` | `Window.` |
| `window_post_message` | `Window.` |

**Mouse & Cursor**

| GameMaker Language | TypeScript |
| - | - |
| `window_mouse_get_x` | `Window.` |
| `window_mouse_get_y` | `Window.` |
| `window_mouse_get_delta_x` | `Window.` |
| `window_mouse_get_delta_y` | `Window.` |
| `window_mouse_set` | `Window.` |
| `window_view_mouse_get_x` | `Window.` |
| `window_view_mouse_get_y` | `Window.` |
| `window_views_mouse_get_x` | `Window.` |
| `window_views_mouse_get_y` | `Window.` |
| `window_set_cursor` | `Window.` |
| `window_get_cursor` | `Window.` |

**Mouse Lock**

| GameMaker Language | TypeScript |
| - | - |
| `window_mouse_set_locked` | `Window.` |
| `window_mouse_get_locked` | `Window.` |

**Drawing**

| GameMaker Language | TypeScript |
| - | - |
| `window_get_colour`<br>`window_set_colour` | `Window.backgroundColour` |

**Border & Caption**

| GameMaker Language | TypeScript |
| - | - |
| `window_get_caption()`<br>`window_set_caption()` | `Window.caption` |
| `window_get_showborder`<br>`window_set_showborder` | `` |
| `window_get_borderless_fullscreen`<br>`window_enable_borderless_fullscreen` | `` |

**Dimensions & Position**

| GameMaker Language | TypeScript |
| - | - |
| `window_center();` | `Window.center()` |
| `window_get_fullscreen();` | `Window.get_fullscreen();` |
| `window_set_fullscreen(full);` | `Window.set_fullscreen` |
| `window_minimise` | `Window.` |
| `window_restore` | `Window.` |
| `window_set_min_width` | `Window.` | `Window.minimumDimensions`
| `window_set_min_height` | `Window.` |
| `window_set_max_width` | `Window.` | `Window.set_maximum_dimensions`
| `window_set_max_height` | `Window.` |
| `window_get_x` | `Window.` |
| `window_get_y` | `Window.` |
| `window_set_position` | `Window.` |
| `window_get_width` | `Window.dimensions.x` |
| `window_get_height` | `Window.dimensions.y` |
| `window_set_size` | `Window.dimensions` |
| `window_set_rectangle` | `Window.` |
| `window_get_visible_rects` | `Window.` |





