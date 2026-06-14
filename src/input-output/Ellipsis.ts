/// This function is a generification of the built-in functions <draw_circle>,
/// <draw_circle_colour>, <draw_ellipse> and <draw_ellipse_colour>.
/**
 * @param {type} [x_position]
/// default : 0
///
/// @param {type} [y_position]
/// default : 0
///
/// @param {type} [x_alignment]
/// default : 0
///
/// @param {type} [y_alignment]
/// default : 0
///
/// @param {type} x_dimension
/// <parameter_description>
///
/// @param {type} y_dimension
/// <parameter_description>
///
/// @param {type} outline_thickness
/// <parameter_description>
///
/// @param {type} blend_colour
/// <parameter_description>
///
/// @param {type} blend_alpha
/// <parameter_description>
///
/// @param {type} parameter_name
/// <parameter_description>
///
function gamemaker_ellipsis_draw(parameters) {

}

function draw_ring_generic(arguments) {

    //     ―――――――――――――――――――― PARAMETERS ――――――――――――――――――――

    var a = arguments

    var parameters = {
        x : a.x,
        y : a.y,
        radius : a.radius,
        width : a.width,

        colour : a["colour"] ?? Colour.White,
        alpha : a["alpha"] ?? 1,
        precision : a["precision"],

        draw_outline : "inside",
    }

    var p = parameters

    if (p.draw_outline == "inside") {
        p.width = Math.min(p.width, p.radius)
    }

    parameters.precision ??= Math.round(Math.max(24, Math.min(128, p.width / 100 * 48)))
    parameters.precision = Math.max(4, parameters.precision)

    //     ―――――――――――――――――――― CONVENIENCE ――――――――――――――――――――

    /*
    if (arguments["image_blend"]) { p.colour = a.image_blend }
    if (arguments["image_alpha"]) { p.alpha = a.image_alpha }
    if (arguments["sprite_width"]) { p.radius = a.sprite_width / 2 }
    */

    //  ―――――――――――――――――――― CONVENIENCE ――――――――――――――――――――

    //  ―――――――――――――――――――― PARAMETERS ――――――――――――――――――――

    //     ―――――――――――――――――――― GET CURRENT DRAW SETTINGS ――――――――――――――――――――

    var preserved = {
        colour : draw_get_colour(),
        alpha : draw_get_alpha(),
    }

    var pre = preserved

    //     ―――――――――――――――――――― GET CURRENT DRAW SETTINGS ――――――――――――――――――――

    //     ―――――――――――――――――――― SET NEW DRAW SETTINGS ――――――――――――――――――――

    draw_set_colour(p.colour)
    draw_set_alpha(p.alpha)

    //  ―――――――――――――――――――― SET NEW DRAW SETTINGS ――――――――――――――――――――

    /*******************************************************************************/
    //     ―――――――――――――――――――― DRAW ――――――――――――――――――――
    /*******************************************************************************/

    var segment_size = 360 / p.precision

    draw_primitive_begin(pr_trianglestrip);

    for (let i = 0; i <= 360; i += segment_size) {
        draw_vertex(
           p.x + lengthdir_x(p.radius, i),
           p.y + lengthdir_y(p.radius, i)
       )
       draw_vertex(
           p.x + lengthdir_x(p.radius + p.width, i),
           p.y + lengthdir_y(p.radius + p.width, i)
       )
    }
    draw_primitive_end()

    /*******************************************************************************/
    //  ―――――――――――――――――――― DRAW ――――――――――――――――――――
    /*******************************************************************************/

    //     ―――――――――――――――――――― RESTORE PREVIOUS DRAW SETTINGS ――――――――――――――――――――

    draw_set_colour(pre.colour)
    draw_set_alpha(pre.alpha)

    //     ―――――――――――――――――――― RESTORE PREVIOUS DRAW SETTINGS ――――――――――――――――――――

}

function scr_draw_circle_width(argument0, argument1, argument2, argument3) {
    if (argument3 <= 1 or argument3 >= argument2) {
        draw_circle(argument0, argument1, argument2, argument3 < argument2)
        return;
    }

    ring_surf = -1
    if (!gamemaker_surface_exists({ surface : ring_surf })) {
        ring_surf = Surface.create()
        .set_dimensions({ x: argument2 * 2, y: argument2 * 2 })
        gamemaker_rendertarget_set_surface(ring_surf)
        draw_clear_alpha(Colour.Black, 0)
        draw_circle(argument2, argument2, argument2, 0)
        gpu_set_blendmode(bm_subtract)
        draw_circle(argument2, argument2, (argument2 - argument3), 0)
        GPUControl.blendmode = ({ blendmode : BlendMode.Default })
        gamemaker_rendertarget_reset_surface()
    }

    ring_surf.position = new Vector2({ x: (argument0 - argument2), y: (argument1 - argument2) });
    ring_surf.draw();

}

function scr_draw_circle_width_qb(argument0, argument1, argument2, argument3, argument4) {
    var xx = argument0
    var yy = argument1
    var radius = argument2
    var width = argument3
    var steps = argument4
    var h = (width / 2)
    draw_primitive_begin(4)
    for (let i = 0; i < steps; i += 1) {
        draw_vertex((xx + lengthdir_x((radius - h), ((360 * i) / steps))), (yy + lengthdir_y((radius - h), ((360 * i) / steps))))
        draw_vertex((xx + lengthdir_x((radius + h), ((360 * i) / steps))), (yy + lengthdir_y((radius + h), ((360 * i) / steps))))
        draw_vertex((xx + lengthdir_x((radius + h), ((360 * (i + 1)) / steps))), (yy + lengthdir_y((radius + h), ((360 * (i + 1)) / steps))))
        draw_vertex((xx + lengthdir_x((radius + h), ((360 * (i + 1)) / steps))), (yy + lengthdir_y((radius + h), ((360 * (i + 1)) / steps))))
        draw_vertex((xx + lengthdir_x((radius - h), ((360 * (i + 1)) / steps))), (yy + lengthdir_y((radius - h), ((360 * (i + 1)) / steps))))
        draw_vertex((xx + lengthdir_x((radius - h), ((360 * i) / steps))), (yy + lengthdir_y((radius - h), ((360 * i) / steps))))
    }
    draw_primitive_end()
}

function scr_draw_circle_width_radius(argument0, argument1, argument2, argument3, argument4) {
    var xx = argument0
    var yy = argument1
    var radius = argument2
    var inner_radius = Math.max(argument3, 0)
    var steps = argument4
    draw_primitive_begin(4)
    for (let i = 0; i < steps; i += 1) {
        draw_vertex((xx + lengthdir_x(inner_radius, ((360 * i) / steps))), (yy + lengthdir_y(inner_radius, ((360 * i) / steps))))
        draw_vertex((xx + lengthdir_x(radius, ((360 * i) / steps))), (yy + lengthdir_y(radius, ((360 * i) / steps))))
        draw_vertex((xx + lengthdir_x(radius, ((360 * (i + 1)) / steps))), (yy + lengthdir_y(radius, ((360 * (i + 1)) / steps))))
        draw_vertex((xx + lengthdir_x(radius, ((360 * (i + 1)) / steps))), (yy + lengthdir_y(radius, ((360 * (i + 1)) / steps))))
        draw_vertex((xx + lengthdir_x(inner_radius, ((360 * (i + 1)) / steps))), (yy + lengthdir_y(inner_radius, ((360 * (i + 1)) / steps))))
        draw_vertex((xx + lengthdir_x(inner_radius, ((360 * i) / steps))), (yy + lengthdir_y(inner_radius, ((360 * i) / steps))))
    }
    draw_primitive_end()
}
