import { Vector2 } from "@gamemaker/data-types/Vector2";
import { MonoBehaviour } from "@gamemaker/MonoBehaviour";
import { Transform } from "@gamemaker/Transform";

export class GameObject {

    /**
     * Destroys an instance. The rest of the current event will still be executed, so use return to not do that.
     */
    static destroy(gameObject: GameObject): void {
        // TODO
    }

    #persistent;
    #visible;

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

    #position: Vector2 = new Vector2({ x: 0, y: 0 });

    public get position() {
        return this.#position;
    }

    public set position(position: Vector2) {
        this.#position = this.#position;
    }

    public attachComponent(component: MonoBehaviour): void {

    }
    
}