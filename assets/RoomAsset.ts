export class RoomAsset {

    public static create(): RoomAsset {
        return new RoomAsset();
    }

    /**
     * Restarts the current room.
     * 
     * **NOTE:** This functions like `gamemaker_room_goto`, leaving and then entering the same room. Same restrictions apply.
     */
    public static restart(): void {
        room_restart();
        return;
    }
    
    #handle = undefined;
    
    #name: string = "";
    
    #eventhandlers = {};
    
    public get_handle() {
        return self[$ "#handle"];
    };

    public get_name(): string {
        if (argument_count != 0) {
            throw new ArgumentCountError($"'argument_count' must be 0, but is {argument_count}.");
        }
        return this.#name;
    };

    public goto(): this {
        gamemaker_room_goto();
        return this;
    };
    
    public get_x_dimension(): number {
        return gamemaker_room_get_x_dimension();
    };
    
    public get_y_dimension(): number {
        return gamemaker_room_get_y_dimension(parameters);
    };
    
    public set_dimensions(parameters): this {
        gamemaker_room_set_dimensions(parameters);
        return this;
    };

    public attach_eventhandler(parameters): this {
        parameters.room = self;
        gamemaker_room_attach_eventhandler(parameters);
        return this;
    };
    
    public trigger_event(_event): this {
        gamemaker_room_trigger_event({ room: self, event: _event });
        return this;
    };

}