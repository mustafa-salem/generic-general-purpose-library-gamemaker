/// gamemaker_construct_create set_method set_event

gamemaker_object(ingameentity_construct_object)

gamemaker_construct_create({ name: "In-Game Entity" })

gamemaker_object(ingame_entity_object)
.attach_eventhandler({ event: "Create Event", handler: function(parameters = {}) {
    if (this["ingame_entity"] == undefined) {
        ingame_entity = gamemaker_construct_instantiate({ object_instance : this })
    }
}})
.attach_eventhandler({ event: "Step Event", handler: function(parameters = {}) {
    ingame_entity.trigger_event("Step Event");
}})
.attach_eventhandler({ event: "Draw Event", handler: function(parameters = {}) {
    ingame_entity.trigger_event("Draw Event");
}})

/// ingameevent_find

gamemaker_object(ingameevent_construct_object)

gamemaker_construct_create({ name: "In-Game Event" })