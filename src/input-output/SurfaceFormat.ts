enum SURFACE_FORMAT {
    RGBA_8BIT_UINT_SHADER_UNIFORM_NORMALIZED = surface_rgba8unorm, // FOUR_CHANNEL_8BIT_UINT_NORMALIZED
    R_8BIT_UINT_SHADER_UNIFORM_NORMALIZED = surface_r8unorm,    // ONE_CHANNEL_8BIT_UINT_NORMALIZED
    RG_8BIT_UINT_SHADER_UNIFORM_NORMALIZED = surface_rg8unorm,
    RGBA_4BIT_UINT_SHADER_UNIFORM_NORMALIZED = surface_rgba4unorm,
    RGBA_16BIT_FLOAT_SHADER_UNIFORM_NOT_NORMALIZED = surface_rgba16float,
    R_16BIT_FLOAT_SHADER_UNIFORM_NOT_NORMALIZED = surface_r16float,
    RGBA_32BIT_FLOAT_SHADER_UNIFORM_NOT_NORMALIZED = surface_rgba32float,
    R_32BIT_FLOAT_SHADER_UNIFORM_NOT_NORMALIZED = surface_r32float,
}

function SurfaceFormatGeneric() {
    channel_count
    type
    bit_depth
    is_normalize

    constants = {
        channel_count : {
            1 : {
                bit_depth : {

                },
            },
            2 : {
                bit_depth : {

                },
            },
            4 : {
                bit_depth : {

                },
            },
        }
    }

    get_constant = function() {
        var _constant = get_struct_member(constants, ["channel_count", "bit_depth", "type", "is_normalized"])
        return _constant
    }
    
}

/// 
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @param {type} parameters.name
/// <description>
/// @returns {type}
function gamemaker_surfaceformat_is_supported(parameters = {}) {
    return _return
}