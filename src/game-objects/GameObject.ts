import { Component } from "@gamemaker/Component";
import { Transform } from "@gamemaker/Transform";

// instance_exists

/**
 * 
 */
export class GameObject {

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