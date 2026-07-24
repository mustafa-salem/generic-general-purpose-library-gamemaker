import { MonoBehaviour } from "@gamemaker/game-objects/MonoBehaviour";

export class DialogueRunner extends MonoBehaviour {

    /**
     * The name of the node that will start running immediately after loading.
     * 
     * This value must be the name of a node present in YarnProject.
     */
    public startNode: string = "Start";

}