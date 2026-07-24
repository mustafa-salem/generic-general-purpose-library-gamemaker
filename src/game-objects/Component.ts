import { GameObject } from "./GameObject";
import { Transform } from "./Transform";

export abstract class Component {
 
    #gameObject: GameObject;
    
    /**
     * The game object this component is attached to. 
     */
    public get gameObject(): GameObject {
        return this.#gameObject;
    }

    public get transform(): Transform {
        return this.#gameObject.transform;
    }

    /**
     * Whether the component exists.
     */
    public get exists(): boolean {
        return true;
    }

}