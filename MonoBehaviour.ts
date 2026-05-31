import { GameObject } from "@gamemaker/GameObject";

export class MonoBehaviour {

    #gameObject: GameObject;
    
    /**
     * The game object this component is attached to. 
     */
    public get gameObject(): GameObject {
        return this.#gameObject;
    }

}