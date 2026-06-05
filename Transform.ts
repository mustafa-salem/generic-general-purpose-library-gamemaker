import { Vector2 } from "./data-types/Vector2";

export class Transform {

    #position: Vector2;
    #rotation: Vector2;
    #scale: Vector2;

    public get position(): Vector2 {
        return this.#position;
    }

    public get rotation(): Vector2 {
        return this.#rotation;
    }

    public get scale(): Vector2 {
        return this.#scale;
    }

}