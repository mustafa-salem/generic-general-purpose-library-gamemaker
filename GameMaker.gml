function __gamemaker_context(parameters = {}) {
    static __context = (function() {
        global[$ "#gamemaker"] ??= {};
        return global[$ "#gamemaker"];
    })();
    return __context;
}