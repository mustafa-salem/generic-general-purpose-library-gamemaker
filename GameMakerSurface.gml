// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― CONSTANTS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
#macro GAMEMAKER_APPLICATION_SURFACE                                                     \
gamemaker_surface(application_surface)

#macro ENABLE_COMBATIBILITY_SIZE_SURFACE_GENERIC false
#macro ENSURE_EXISTS_SURFACE_GENERIC true
#macro DEFAULT_FORMAT_SURFACE_GENERIC RGBA_8BIT_UINT_NORMALIZED
#macro SURFACE_DEFAULT_BLEND_ALPHA 1
#macro SURFACE_DEFAULT_FORMAT surface_rgba8unorm
#macro SURFACE_DEFAULT_GARBAGE_COLLECTION true
#macro SURFACE_DEFAULT_EXISTANCE_ENSURANCE true

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――― CONSTANTS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― CONSTRUCTOR ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function GameMakerSurface() constructor {

    private = {}

    private.surface_id = is_numeric(arguments) ? arguments : gamemaker_surface_create(arguments)

    private.cached = {
        width  : get_x_dimension(),
        height : get_y_dimension(),
        format : get_format(),
        depth_buffer_enabled : true,
    }

    ensure_existance = function() {}

    surface_existance_ensurance_enabled = true

    private.ensure_surface_exists = function() {
        if (exists() or !surface_existance_ensurance_enabled) { return }

        private.surface_id = gamemaker_surface_create({
            width  : private.cached.width,
            height : private.cached.height,
            format : private.cached.format,
            depth_buffer_enabled : private.cached.depth_buffer_enabled,
        })
    }

    set_target = function(arguments = {}) {
        private.ensure_surface_exists()
        arguments.surface = self
        gamemaker_rendertarget_set_surface(arguments)
    }

    get_texture = function(arguments = {}) {
        arguments.surface = self
        surface_get_texture
    }

    get_depth_disable = function(arguments = {}) {
        arguments.surface = self
        surface_get_depth_disable
    }

    get_pixel = function(arguments = {}) {
        arguments.surface = self
        surface_getpixel_ext
    }

    save = function(arguments = {}) {
        arguments.surface = self
        surface_save_part
    }

    load_contents_from_buffer = function(arguments = {}) {
        arguments.surface = self

    }

    load_contents_from_buffer = function(arguments = {}) {
        buffer_get_surface(_buffer_id, _surface_id, _offset_bytes)
    }


    save_contents_to_buffer = function(arguments = {}) {
        arguments.surface = self

    }

    save_contents_to_buffer = function(arguments = {}) {

        var _buffer = is_struct(arguments.buffer) ? arguments.buffer : create_buffer_generic({  })

        var _buffer_id    = _buffer.get_id()
        var _surface_id   = is_numeric(arguments.surface) ? arguments.surface : arguments.surface.get_id()
        var _offset_bytes =
        buffer_set_surface(_buffer_id, _surface_id, _offset_bytes)

        return _buffer
    }

    static private = {
        default_blend_alpha : SURFACE_DEFAULT_BLEND_ALPHA,
    }

    = function(arguments = {}) {
        arguments.surface = self
        surface_copy_part
    }

    = function(arguments = {}) {
        arguments.surface = self
        surface_depth_disable
    }
    
    static exists = function(parameters = {}) {
        parameters.surface = self
        return gamemaker_surface_exists(parameters)
    }

    static build = function(parameters = {}) {
        parameters.surface = self
        gamemaker_surface_build(parameters)
        return self
    }

    static destroy = function(parameters = {}) {
        parameters.surface = self
        return gamemaker_surface_destroy(parameters)
    }

    static get_x_dimension = function(parameters = {}) {
        parameters.surface = self
        return gamemaker_surface_get_x_dimension(parameters)
    }

    static get_y_dimension = function(parameters = {}) {
        parameters.surface = self
        return gamemaker_surface_get_y_dimension(parameters)
    }

    /// resize
    /// set_height
    /// set_width
    /// set_scaling
    static set_dimensions = function(parameters = {}) {
        parameters.surface = self
        gamemaker_surface_set_dimensions(parameters)
        return self
    }

    static get_format = function(parameters = {}) {
        parameters.surface = self
        return gamemaker_surface_get_format(parameters)
    }

    static draw = function(parameters = {}) {
        parameters.surface = self
        gamemaker_surface_draw(parameters)
        return self
    }

    self.exists  = method(self, exists)
    self.build   = method(self, build)
    self.destroy = method(self, destroy)

    self.get_x_dimension = method(self, get_x_dimension)
    self.get_y_dimension = method(self, get_y_dimension)
    self.set_dimensions  = method(self, set_dimensions)

    self.get_format = method(self, get_format)

    self.draw = method(self, draw)

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――― CONSTRUCTOR ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
