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

    #position: Vector2 = new Vector2({ x: 0, y: 0 });

    #transform: Transform = new Transform();

    public get transform(): Transform {
        return this.#transform;
    }

    public get position() {
        return this.#position;
    }

    public set position(position: Vector2) {
        this.#position = this.#position;
    }

    public attachComponent(component: MonoBehaviour): void {

    }

    constructor() {
        
    }
    
}