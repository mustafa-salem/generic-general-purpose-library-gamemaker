/// ----------------------------------------------------------------------------
/// @description
/// <function_description>
/// ----------------------------------------------------------------------------
/// @parameter {string|handle|integer} sprite
/// The sprite to display.
///
/// @parameter {integer} [frame=0]
/// The index of the frame of the sprite to display. Defaults to 0.
///
/// ----------------------------------------------------------------------------
/// @returns {struct.GameMakerSpriteElement}
/// <return_description>
/// ----------------------------------------------------------------------------
function gamemaker_spriteelement_create(parameters = {}) {

    var _spriteelement = new GameMakerSpriteElement()

    _spriteelement.private = {
        sprite     : undefined,
        frame      : 0,
        x_origin   : 0,
        y_origin   : 0,
        x_scale    : 1,
        y_scale    : 1,
        x_position : 0,
        y_position : 0,
        bendcolour : #FFFFFF,
        blendalpha : 1,
        x_rotation : 0,
        y_rotation : 0,
        z_rotation : 0,
        subimage   : { x : [0, 0], y : [0, 0] },
    }

    return _spriteelement
}
