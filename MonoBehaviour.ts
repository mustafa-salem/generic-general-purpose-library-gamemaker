import { GameObject } from "@gamemaker/GameObject";
import { Transform } from "@gamemaker/Transform";

/**
 * 
 */
export class MonoBehaviour {

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

}