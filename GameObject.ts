import { Vector2 } from "@gamemaker/data-types/Vector2";

export class GameObject {

    #position: Vector2 = new Vector2({ x: 0, y: 0 });

    public get position() {
        return this.#position;
    }

    public set position(position: Vector2) {
        this.#position = this.#position;
    }

    constructor() {
        
    }
    
}