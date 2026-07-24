import { Vector3 } from "../data-types/Vector3";

export class Transform {
    
    #position: Vector3 = new Vector3(0, 0, 0);
    #rotation: Vector3 = new Vector3(0, 0, 0);
    #scale: Vector3 = new Vector3(0, 0, 0);
    
    /**
     * The local position of the game object (relative to its parent).
     */
    public get position(): Vector3 {
       return this.#position;
    }
    
    public set position(position: Vector3) {
        this.#position.x = position.x;
        this.#position.y = position.y;
        this.#position.z = position.z;
    }

    /**
     * 
     */
    public get rotation(): Vector3 {
        return this.#rotation;
    }

    public set rotation(rotation: Vector3) {
        this.#rotation = rotation;
    }

    /**
     * 
     */
    public get scale(): Vector3 {
        return this.#scale;
    }

    public set scale(scale: Vector3) {
        this.#scale = scale;
    }

    public translate(translation: Vector3): void {
        
    }

    public rotate(translation: Vector3): void {
        
    }

}