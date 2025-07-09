/******************************************************************************/
#region    –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

function gamemaker_sprite(parameters = {}) {
    return _return
}

function gamemaker_sprite_handle(parameters = {}) {
    return _return
}

function gamemaker_sprite_get_texture(parameters = {}) {
    var _sprite   = parameters[$ "sprite"];
    var _subimage = parameters[$ "subimage"] ?? 0;
    return sprite_get_texture(_sprite, _subimage);
}

function gamemaker_sprite_get_x_dimension(parameters = {}) {
    var _sprite = parameters[$ "sprite"];
    return sprite_get_width(_sprite);
}

function gamemaker_sprite_get_y_dimension(parameters = {}) {
    var _sprite = parameters[$ "sprite"];
    return sprite_get_height(_sprite);
}

function gamemaker_sprite_get_xoffset(parameters = {}) {
    var _sprite = parameters[$ "sprite"];
    return sprite_get_xoffset(_sprite);
}

function gamemaker_sprite_get_yoffset(parameters = {}) {
    var _sprite = parameters[$ "sprite"];
    return sprite_get_yoffset(_sprite);
}

function gamemaker_sprite_get_fps(_sprite) {
    var _speed = sprite_get_speed(_sprite)
    var _type = sprite_get_speed_type(_sprite)

    if (_type == spritespeed_framespersecond) {
        return _speed
    } else if (_type == spritespeed_framespergameframe) {
        return (_speed * game_get_speed(gamespeed_fps))
    }
}

function gamemaker_sprite_draw(arguments) {

    static draw_method_default = function(arguments) {
        draw_sprite_general(
            arguments.sprite,
            arguments.frame,
            arguments.fragment.x,
            arguments.fragment.y,
            arguments.fragment.width,
            arguments.fragment.height,
            arguments.x,
            arguments.y,
            arguments.xscale,
            arguments.yscale,
            arguments.rotation,
            arguments.gradient.top_left,
            arguments.gradient.top_right,
            arguments.gradient.bottom_right,
            arguments.gradient.bottom_left,
            arguments.alpha
        )
    }

    static draw_method_nine_slice = function(arguments) {
        draw_sprite_ext(
            arguments.sprite,
            arguments.frame,
            arguments.x,
            arguments.y,
            arguments.xscale,
            arguments.yscale,
            arguments.rotation,
            arguments.colour,
            arguments.alpha
        )
    }

    static draw_method_tiled = function(arguments) {
        draw_sprite_tiled_ext(
            arguments.sprite,
            arguments.frame,
            arguments.x,
            arguments.y,
            arguments.xscale,
            arguments.yscale,
            arguments.colour,
            arguments.alpha
        )
    }

    static draw_method_shader = function(arguments) {

        arguments.screen_x = arguments.x
        arguments.screen_y = arguments.y
        arguments.x = 0
        arguments.y = 0

        var _preserved_shader = shader_current()

        var _surface_width = arguments.sprite_draw_width
        var _surface_height = arguments.sprite_draw_height

        if (arguments.shader == outline_shader) {
            arguments.outline.width = arguments.outline[$ "width"] ?? 1

            _surface_width += 2 * arguments.outline.width
            _surface_height += 2 * arguments.outline.width

            arguments.x += arguments.outline.width
            arguments.y += arguments.outline.width

            arguments.screen_x -= arguments.outline.width
            arguments.screen_y -= arguments.outline.width
        }

        var surface = gamemaker_surface_create()
        .set_dimensions({ x : _surface_width, y : _surface_height })
        gamemaker_rendertarget_set_surface({ surface })
        draw_clear_alpha(#FFFFFF, 0)

        if (arguments.nine_slice) { gamemaker_sprite_draw.draw_method_nine_slice(arguments) }
        else if (arguments.tiled) { gamemaker_sprite_draw.draw_method_tiled(arguments) }
        else { gamemaker_sprite_draw.draw_method_default(arguments) }
        gamemaker_rendertarget_reset_surface()

        shader_set(arguments.shader)

        if (arguments.shader == outline_shader) {
            // var _texture = sprite_get_texture(arguments.sprite, arguments.frame)
            var _pixel_width = 1 / _surface_width // texture_get_texel_width(_texture)
            var _pixel_height = 1 / _surface_height // texture_get_texel_height(_texture)

            var _pixel_size = shader_get_uniform(outline_shader, "pixel_size")
            shader_set_uniform_f(_pixel_size, _pixel_width, _pixel_height)

            var _outline_width = shader_get_uniform(outline_shader, "outline_width")
            shader_set_uniform_i(_outline_width, arguments.outline.width)

            var _red = colour_get_red(arguments.outline.colour) / 255
            var _green = colour_get_green(arguments.outline.colour) / 255
            var _blue = colour_get_blue(arguments.outline.colour) / 255
            var _alpha = arguments.outline[$ "alpha"] ?? 1

            var _outline_colour = shader_get_uniform(outline_shader, "outline_colour")
            shader_set_uniform_f(_outline_colour, _red, _green, _blue, _alpha)

            if (!is_undefined(arguments[$ "filling"])) {
                var _filling_mode = shader_get_uniform(outline_shader, "filling_mode")
                shader_set_uniform_i(_filling_mode, 2)

                var _red = colour_get_red(arguments.filling.colour) / 255
                var _green = colour_get_green(arguments.filling.colour) / 255
                var _blue = colour_get_blue(arguments.filling.colour) / 255
                var _alpha = arguments.filling[$ "alpha"] ?? 1

                var _filling_colour = shader_get_uniform(outline_shader, "filling_colour")
                shader_set_uniform_f(_filling_colour, _red, _green, _blue, _alpha)
            }

        }

        draw_surface(surface, arguments.screen_x, arguments.screen_y)

        gamemaker_surface_destroy({ surface : surface })
        shader_reset()

        if (_preserved_shader != -1) { shader_set(_preserved_shader) }
    }

    var a = arguments

    var parameters = {
        sprite : arguments.sprite,
        frame : arguments[$ "frame"] ?? 0,
        x : arguments[$ "x"] ?? 0,
        y : arguments[$ "y"] ?? 0,
        xscale : arguments[$ "xscale"] ?? 1,
        yscale : arguments[$ "yscale"] ?? 1,
        rotation : arguments[$ "rotation"] ?? 0,
        alpha : arguments[$ "alpha"] ?? 1,

        fragment : arguments[$ "fragment"] ?? {
            x : 0,
            y : 0,
            width : gamemaker_sprite_get_x_dimension(arguments.sprite),
            height : sprite_get_y_dimension(arguments.sprite),
        },

        colour : arguments[$ "colour"] ?? #FFFFFF,
        gradient : arguments[$ "gradient"] ?? {
            top_left : #FFFFFF,
            top_right : #FFFFFF,
            bottom_right : #FFFFFF,
            bottom_left : #FFFFFF,
        },

        tiled : arguments[$ "tiled"] == undefined ? false : true,

        nine_slice : sprite_get_nineslice(arguments.sprite).enabled,
        shader : arguments[$ "shader"] ?? -1,
        outline : arguments[$ "outline"] ?? undefined,
        filling : arguments[$ "filling"] ?? undefined,

        seconds : get_timer() / 1000000,
    }

    var p = parameters

    if (struct_exists(arguments, "scale")) {
        parameters.xscale = arguments.scale
        parameters.yscale = arguments.scale
    }

    if (struct_exists(arguments, "image_speed")) {
        if (arguments.image_speed == MODE_DEFAULT or arguments.image_speed == "default") {
            parameters.frame = (parameters.seconds * gamemaker_sprite_get_fps(arguments.sprite)) % sprite_get_number(arguments.sprite)
        } else {
            parameters.frame = (parameters.seconds * arguments.image_speed) % sprite_get_number(arguments.sprite)
        }
    }

    if (struct_exists(arguments, "yhover")) {
        parameters.y += sin((parameters.seconds * (2 * pi) * arguments.yhover.frequency)) * arguments.yhover.amplitude
    }

    if (struct_exists(arguments, "width")) {
        parameters.xscale = arguments.width / (parameters.fragment.width)
    }

    if (struct_exists(arguments, "height")) {
        parameters.yscale = arguments.height / (parameters.fragment.height)
    }

    if (struct_exists(arguments, "pulsate")) {
        parameters.xscale += sin((p.seconds * (2 * pi) * a.pulsate.x.frequency)) * a.pulsate.x.amplitude
        parameters.yscale += sin((p.seconds * (2 * pi) * a.pulsate.y.frequency)) * a.pulsate.y.amplitude
    }

    if (struct_exists(arguments, "colour")) {
        with (parameters.gradient) {
            top_left = arguments.colour
            top_right = arguments.colour
            bottom_right = arguments.colour
            bottom_left = arguments.colour
        }
    }

    if (struct_exists(arguments, "align") and arguments.align == "center") {
        parameters.x -= gamemaker_sprite_get_x_dimension(parameters.sprite) * parameters.xscale / 2
        parameters.y -= sprite_get_y_dimension(parameters.sprite) * parameters.yscale / 2
    } else if (!struct_exists(arguments, "ignore_offset") or arguments.ignore_offset == false) {
        parameters.x -= sprite_get_xoffset(parameters.sprite) * parameters.xscale
        parameters.y -= sprite_get_yoffset(parameters.sprite) * parameters.yscale
    }


    parameters.sprite_draw_width = p.fragment.width * p.xscale
    parameters.sprite_draw_height = p.fragment.height * p.yscale


    if (parameters.tiled) {
        if (is_struct(arguments.tiled)) {
            parameters.x = -2 * p.sprite_draw_width
            parameters.y = -2 * p.sprite_draw_height
            parameters.x += (a.tiled.x.offset + p.seconds * a.tiled.x.speed) % p.sprite_draw_width
            parameters.y += (a.tiled.y.offset + p.seconds * a.tiled.y.speed) % p.sprite_draw_height
        }
    }

    if (parameters.shader != -1) { draw_method_shader(parameters) }
    else if (parameters.nine_slice) { draw_method_nine_slice(parameters) }
    else if (parameters.tiled) { draw_method_tiled(parameters) }
    else { draw_method_default(parameters) }
}

/******************************************************************************/
#endregion –––––––––––––––––––– FUNCTIONS ––––––––––––––––––––
/******************************************************************************/

/******************************************************************************/
#region    –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/

function GameMakerSprite() constructor {

    static get_texture = gamemaker_sprite_get_texture

}

// WRAPPER FOR SPRITE WITH SPECIFIC SETTINGS
function GameMakerSpriteInstance() constructor {

}

// REFERS TO SPRITE ASSET
function GameMakerSpriteSpritePattern() constructor {

}

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/