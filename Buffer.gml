fill
seek
tell
peek
poke
save
load
async_group
copy
type
alignment
address
size
resize
sizeof
hash
encode/decode
used size

function BufferGeneric(arguments = {}) constructor {

    exists = function(arguments = {}) {
        arguments.buffer = self
        return gamemaker_buffer_exists(arguments)
    }

    delete = function(arguments = {}) {
        arguments.buffer = self
        gamemaker_buffer_delete(arguments)
    }

    read = function(arguments = {}) {
        arguments.buffer = self
        gamemaker_buffer_read(arguments)
    }

    write = function(arguments = {}) {
        arguments.buffer = self
        gamemaker_buffer_write(arguments)
    }

}