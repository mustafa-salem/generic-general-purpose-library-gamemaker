function create_buffer_generic(arguments = {}) {

}

function gamemaker_buffer_delete(arguments = {}) {
    buffer_delete(_buffer_id)
}

function gamemaker_buffer_exists(arguments = {}) {
    return buffer_exists(_buffer_id)
}

function gamemaker_buffer_write(arguments = {}) {
    buffer_write(_buffer_id, _buffer_data_type_constant, _value)
}

function gamemaker_buffer_read(arguments = {}) {
    buffer_read(_buffer_id, _buffer_data_type_constant)
}

class BufferGeneric {

    exists(arguments = {}) {
        arguments.buffer = this
        return gamemaker_buffer_exists(arguments)
    }

    delete(arguments = {}) {
        arguments.buffer = this
        gamemaker_buffer_delete(arguments)
    }

    read(arguments = {}) {
        arguments.buffer = this
        gamemaker_buffer_read(arguments)
    }

    write(arguments = {}) {
        arguments.buffer = this
        gamemaker_buffer_write(arguments)
    }

}