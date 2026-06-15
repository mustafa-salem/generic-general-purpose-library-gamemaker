import { Component } from "@gamemaker/Component";
import { Transform } from "@gamemaker/Transform";

// instance_exists

/**
 * 
*/
export class GameObject {
    
    public static findInstance() {
        
    }

    /// `parameters.instance` The 'Object Instance' to target.
    /// y_position
    /// @param {Struct} parameters The struct containing the arguments to pass to the function.
    /// The y position to use as a basis for the depth sorting algorithm.
    public static depthsort(parameters) {
        var _instance = parameters.instance;
        var _object_instance = parameters.object_instance
        _object_instance.depth = 8000 - room_height / 2 + _object_instance.y + _object_instance.sprite_height - _object_instance.sprite_yoffset
    }

    /**
     * Creates a game object instance with an instance of the provided component attached.
     * @returns The attached component instance.
     */
    public static instantiate<T extends Component>(component: { new(): T }): T {
        return new component();
    }

    /// This function is used to destroy construct instances.
    /// **NOTE:** Triggers the `Destroy Event` and then the `Clean Up Event`
    /// ---
    /// `parameters.instance`
    /// @param {Struct} parameters
    /// @returns {Undefined}

    /**
     * Destroys an instance. The rest of the current event will still be executed, so use return to not do that.
     */
    public static destroy(gameObject: GameObject): void {
        // TODO
    }

    /**
     * Whether the instance carries over from room to room.
     */
    public get persistent(): boolean {
        return false;
    }

    /**
     * Whether the instance is visible, and therefore is executing its draw events.
     */
    public get visible(): boolean {
        return true;
    }

    /**
     * @todo
     */
    public set visible(visible: boolean) {

    }

    /**
     * The room that contains this instance.
     */
    public get room() {
        return;
    }

    /**
     * The layer that contains this instance.
     */
    public get layer() {
        return;
    }
    
    #transform: Transform = new Transform();
    
    public get transform(): Transform {
        return this.#transform;
    }

    public attachComponent<T extends Component>(component: { new(): T }): T {
        return new component();
    }

    public findComponent<T extends Component>(component: { new(): T }): T {
        return new component();
    }
    
}