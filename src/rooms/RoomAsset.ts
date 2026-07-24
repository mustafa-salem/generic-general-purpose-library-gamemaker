export class RoomAsset {

    public static create(): RoomAsset {
        return new RoomAsset();
    }

    /**
     * Restarts the current room.
     * 
     * **NOTE:** This functions like `room_goto`, leaving and then entering the same room. Same restrictions apply.
     */
    public static restart(): void {
        room_restart();
        return;
    }
    
    #handle = undefined;
    
    #name: string = "";
    
    public get name(): string {
        return this.#name;
    }

    #eventhandlers = {};
    
    public get_handle() {
        return this["#handle"];
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
        parameters.room = this;
        gamemaker_room_attach_eventhandler(parameters);
        return this;
    };
    
    public trigger_event(_event): this {
        gamemaker_room_trigger_event({ room: this, event: _event });
        return this;
    };

    /** Callback to be executed when the room is entered. (not when a persistent room is reentered) */
    public "Room Creation Code": () => void;

}