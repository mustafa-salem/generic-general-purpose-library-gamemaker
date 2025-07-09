static attach_eventhandler = function(parameters = {}) {
    self[$ "#eventhandlers"];
    return self;
}

static trigger_event = function(parameters = {}) {
    var _ = self[$ "#eventhandlers"];
    for (var i = 0; i < array_length(); i++) {
        _[i](parameters);
    }
    return self;
}