function draw_text_width(argument0, argument1, argument2, argument3) {
    var _stringxscale = 1
    var _stringwidth = string_width(argument2)
    if (_stringwidth >= argument3)
        _stringxscale = (argument3 / _stringwidth)
    draw_text_transformed(argument0, argument1, argument2, _stringxscale, 1, 0)
}

function draw_text_outline(argument0, argument1, argument2, argument3) {
    resetcolour = draw_get_colour()
    draw_set_colour(argument3)
    draw_text((argument0 - 1), argument1, argument2)
    draw_text((argument0 - 1), (argument1 - 1), argument2)
    draw_text((argument0 - 1), (argument1 + 1), argument2)
    draw_text((argument0 + 1), argument1, argument2)
    draw_text((argument0 + 1), (argument1 + 1), argument2)
    draw_text((argument0 + 1), (argument1 - 1), argument2)
    draw_text(argument0, (argument1 + 1), argument2)
    draw_text(argument0, (argument1 - 1), argument2)
    draw_set_colour(resetcolour)
    draw_text(argument0, argument1, argument2)
}

function draw_text_shadow_width(argument0, argument1, argument2, argument3) {
    if (argument3 == undefined) {
        __txtcolour__ = draw_get_colour()
        draw_set_colour(#000000)
        draw_text((argument0 + 1), (argument1 + 1), argument2)
        draw_set_colour(__txtcolour__)
        draw_text(argument0, argument1, argument2)
    } else {
        __txtcolour__ = draw_get_colour()
        draw_set_colour(#000000)
        draw_text_width((argument0 + 1), (argument1 + 1), argument2, argument3)
        draw_set_colour(__txtcolour__)
        draw_text_width(argument0, argument1, argument2, argument3)
    }
}