import { GameObject } from "@gamemaker/GameObject";

export class MonoBehaviour {

    #gameObject: GameObject;

    public get gameObject(): GameObject {
        return this.#gameObject;
    }

    constructor() {
        
    }

}