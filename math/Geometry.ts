/// var _coordinates = gm_coordinates_polartocartesian({ radius: _, angle: _ });


/// Translates polar coordinates `{ radius, angle }` into cartesian coordinates `{ x, y }`.
/// **NOTE:** Replaces the build-in functions `lengthdir_x`, and `lengthdir_y`.
/// ---
/// `parameters.radius` The radial coordinate; must be a number.
/// `parameters.angle` The angular coordinate, in degrees; must be a number.
/// @param {Struct} parameters The struct containing the arguments to pass to the function.
/// @returns {Struct}
function gm_coordinates_polartocartesian(parameters) {
    var _radius = parameters.radius;
    var _angle  = parameters.angle;
    var _x = lengthdir_x(_radius, _angle);
    var _y = lengthdir_y(_radius, _angle);
    return { x: _x, y: _y };
}

/// Translates radians into degrees.
/// @param {Real} _radians The radians to convert.
function gm_radianstodegrees(_radians) {
    return radtodeg(_radians);
}

export class Coordinates {

    public static fromPolar() {

    }

    public static toCartesian() {
        
    }

}

export class Angle {

    public toRadians(): number {
        return 0;
    }

    public toDegrees(): number {
        return 0;
    }

}