import { Component } from "./Component";
import { YieldInstruction } from "./YieldInstruction";

/**
 * 
 */
export class MonoBehaviour extends Component {

    /**
     * 
     * @param coroutine 
     */
    public startCoroutine(coroutine: Generator<YieldInstruction>): void {
        
    }

}