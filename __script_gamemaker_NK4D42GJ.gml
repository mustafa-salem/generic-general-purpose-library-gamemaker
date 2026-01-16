#macro __GAMEMAKER_CONTEXT __gamemaker_context()

/// always initialise even if not referenced
__gamemaker_initialize();

/// initializes the context
function __gamemaker_initialize() {
    /// early return
    if (global[$ "#gamemaker"] != undefined) {
        return global[$ "#gamemaker"];
    }
    /// GameMaker
    global[$ "#gamemaker"] = {};
    /// Objects
    global[$ "#gamemaker"][$ "objects"] = {};
    global[$ "#gamemaker"][$ "objects"][$ "assets"] = {};
    /// Rooms
    global[$ "#gamemaker"][$ "rooms"] = {};
    global[$ "#gamemaker"][$ "rooms"][$ "assets"] = {};
    ///
    return global[$ "#gamemaker"];
}

/// Gets the context; initializes it if it doesn't exist yet.
function __gamemaker_context() {
    static __context = __gamemaker_initialize();
    return __context;
}