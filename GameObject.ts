import { Vector2 } from "@gamemaker/data-types/Vector2";
import { MonoBehaviour } from "@gamemaker/MonoBehaviour";
import { Transform } from "@gamemaker/Transform";

/**
 * 
 */
export class GameObject {

    /**
     * Destroys an instance. The rest of the current event will still be executed, so use return to not do that.
     */
    static destroy(gameObject: GameObject): void {
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

    public attachComponent<T extends MonoBehaviour>(type: { new(): T }): T {
        return new type();
    }

    public findComponent<T extends MonoBehaviour>(type: { new(): T }): T {
        return new type();
    }
    
}