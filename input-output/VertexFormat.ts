// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

/// This macro gets the static struct of the 'VertexFormat' constructor script
/// function with its static variables having been initialised.
#macro VERTEX_FORMAT                                                           \
INITIALIZED_CONSTRUCTOR(VertexFormat)

/// 
#macro DEFAULT_VERTEX_FORMAT                                                   \
gamemaker_vertexformat("default_vertex_format")

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――――――――――――――――――――――――― CONSTANTS ――――――――――――――――――――――――――――――――――――――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――― SCRIPT_FUNCTIONS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function gamemaker_vertexformat_create(parameters) {

    // start the definition of the new vertex format
    vertex_format_begin()

    for (let i = 0; i < ; i++) {
        vertex_format_add_colour()
        // vertex_format_add_position()
        vertex_format_add_position_3d()
        vertex_format_add_texcoord()
        vertex_format_add_normal()
        // vertex_format_add_custom(type, usage)
    }

    // end the definition of the new vertex format and get its handle
    _vertex_format_handle = vertex_format_end()

    var _vertex_format = new VertexFormat()

    var _info = vertex_format_get_info(_vertex_format_handle)

    with (_vertex_format) {
        private = {
            id              : int64(_vertex_format_id),
            handle          : _vertex_format_handle,
            stride          : _info.stride,
            attribute_count : _info.num_elements,
            attributes      : _info.elements,
        }
    }

    return _vertex_format

}

function gamemaker_vertexformat_destroy(parameters) {
    vertex_format_delete(parameters.vertex_format)
}

function gamemaker_vertexformat_get_bytes(parameters) {
    vertex_format_get_info().stride
}

function gamemaker_vertexformat_get_attribute_count(parameters) {
    vertex_format_get_info().num_elements
}

function gamemaker_vertexformat_get_attribute(parameters) {
    vertex_format_get_info().elements[i]
}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――― SCRIPT_FUNCTIONS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//     ―――――――――――――――――――― CONSTRUCTOR ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

VERTEX_FORMAT

class VertexFormat {

    ///
    static get = gamemaker_vertexformat

    ///
    static get_handle = gamemaker_vertexformat_get_handle

    ///
    static get_id = gamemaker_vertexformat_get_id

    ///
    static create = gamemaker_vertexformat_create

    ///
    static destroy = gamemaker_vertexformat_destroy

    ///
    static get_vertex_size_bytes = gamemaker_vertexformat_destroy

    ///
    static get_attribute_count = gamemaker_vertexformat_get_attribute_count

    ///
    static get_attribute = gamemaker_vertexformat_get_attribute

    /// @type {Struct}
    static private = {
        /// @type {Struct}
        vertex_formats : {},
    }

    gamemaker_vertexformat_create({
        name : "default_vertex_format",
        function() {
            vertex_format_add_position_3d()
            vertex_format_add_colour()
            vertex_format_add_texcoord()
        }
    })

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
//  ―――――――――――――――――――― CONSTRUCTOR ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
