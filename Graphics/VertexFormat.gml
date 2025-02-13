/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#region    –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

/// ----------------------------------------------------------------------------
/// @description
/// This macro gets the static struct of the 'VertexFormat' constructor script
/// function with its static variables having been initialized.
/// ----------------------------------------------------------------------------
#macro VERTEX_FORMAT                                                           \
INITIALIZED_CONSTRUCTOR(VertexFormat)

/// ----------------------------------------------------------------------------
/// @description
/// <description>
/// ----------------------------------------------------------------------------
#macro DEFAULT_VERTEX_FORMAT                                                   \
gamemaker_vertexformat_get({ vertex_format : "default_vertex_format" })

/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#endregion –––––––––––––––––––– CONSTANTS ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#region    –––––––––––––––––––– SCRIPT_FUNCTIONS ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

function gamemaker_vertexformat_create(parameters) {

    // start the definition of the new vertex format
    vertex_format_begin()

    for (var i = 0; i < ; i++) {
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

/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#endregion –––––––––––––––––––– SCRIPT_FUNCTIONS ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#region    –––––––––––––––––––– CONSTRUCTOR ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/

VERTEX_FORMAT

function VertexFormat() constructor {

    /// @function get(parameters)
    static get = gamemaker_vertexformat_get

    /// @function get_handle(parameters)
    static get_handle = gamemaker_vertexformat_get_handle

    /// @function get_id(parameters)
    static get_id = gamemaker_vertexformat_get_id

    /// @function create(parameters)
    static create = gamemaker_vertexformat_create

    /// @function destroy(parameters)
    static destroy = gamemaker_vertexformat_destroy

    /// @function get_vertex_size_bytes(parameters)
    static get_vertex_size_bytes = gamemaker_vertexformat_destroy

    /// @function get_attribute_count(parameters)
    static get_attribute_count = gamemaker_vertexformat_get_attribute_count

    /// @function get_attribute(parameters)
    static get_attribute = gamemaker_vertexformat_get_attribute

    /// @type {struct}
    static private = {
        /// @type {struct}
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

/******************************************************************************/
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
#endregion –––––––––––––––––––– CONSTRUCTOR ––––––––––––––––––––
/* –––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––––– */
/******************************************************************************/
