import { Vector3 } from "../data-types/Vector3";

export class Transform {

    #position: Vector3;
    #rotation: Vector3;
    #scale: Vector3;

    public get position(): Readonly<Vector3> {
        return this.#position;
    }

    public set position(position: Vector3) {
        this.#position = position;
    }

    public get rotation(): Vector3 {
        return this.#rotation;
    }

    public get scale(): Vector3 {
        return this.#scale;
    }

    public translate(translation: Vector3): void {
        
    }

}