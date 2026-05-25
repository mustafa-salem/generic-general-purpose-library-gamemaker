export class View {

    /*     private = {
        camera_index : arguments["camera_index"] ?? 0,
    }
    camera() { return view_camera[private.camera_index] }
    x1() { return camera_get_view_x(camera()) }
    x2() { return x1() + width() }
    y1() { return camera_get_view_y(camera()) }
    y2() { return y1() + height() }
    width() { return camera_get_view_width(camera()) }
    height() { return camera_get_view_height(camera()) }
    xcenter() { return x1() + (width() / 2) }
    ycenter() { return y1() + (height() / 2) }
    viewport_width() { return view_wport[private.camera_index] }
    viewport_height() { return view_hport[private.camera_index] }
    xscale() { return viewport_width() / width() }
    yscale() { return viewport_height() / height() }

    if (arguments == undefined) {
        return undefined;
    }

    private = {
        camera_id : gamemaker_camera_get_id({ camera : arguments.camera })
    } */

    public static create() {
        return new View(arguments)
    }

    public get position() {
        var _camera_id = Camera.get_id({ camera : arguments.camera })
        return camera_get_view_x(_camera_id)
        if (is_instanceof(this, View)) { arguments.camera = private.camera_id }
        var _camera_id = Camera.get_id({ camera : arguments.camera })
        return camera_get_view_y(_camera_id)
        if (is_instanceof(this, View)) { arguments.camera = private.camera_id }
        var _camera_id = Camera.get_id({ camera : arguments.camera })
        return {
            x : camera_get_view_x(_camera_id),
            y : camera_get_view_y(_camera_id),
        }
    }

    public set position(position: Vector2) {
        var _camera_id = Camera.get_id({ camera : arguments.camera })
        var _x = arguments["x"] ?? camera_get_view_x(_camera_id)
        var _y = arguments["y"] ?? camera_get_view_y(_camera_id)
        camera_set_view_pos(_camera_id, _x, _y)
        return this
    }

    public get_x_dimension() {
        var _camera_id = Camera.get_id({ camera : arguments.camera })
        return camera_get_view_width(_camera_id)
    }

    public get_y_dimension() {
        var _camera_id = Camera.get_id({ camera : arguments.camera })
        return camera_get_view_height(_camera_id)
    }

    public get_dimensions() {
        var _camera_id = Camera.get_id({ camera : arguments.camera })
        return {
            x : camera_get_view_width(_camera_id),
            y : camera_get_view_height(_camera_id),
        }
    }

    public set_dimensions() {
        var _camera_id = Camera.get_id({ camera : arguments.camera })
        var _x = arguments["x"] ?? camera_get_view_width(_camera_id)
        var _y = arguments["y"] ?? camera_get_view_height(_camera_id)
        camera_set_view_size(_camera_id, _x, _y)
        return this
    }

}
