function gamemaker_viewport_get_index(arguments = {}) {
    var _view_port_index = arguments.view_port
    if (is_struct(arguments.view_port)) {
        _view_port_index = arguments.view_port.get_index()
    }
    return _view_port_index
}