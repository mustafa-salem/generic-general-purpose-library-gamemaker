import { YieldInstruction } from "./YieldInstruction";

/**
 * In a coroutine function, yield an instance of this instruction to make the coroutine pause for a number of seconds.
 */
export class WaitForSeconds extends YieldInstruction {

    readonly #seconds: number;

    public constructor(seconds: number) {
        super();
        this.#seconds = seconds;
    }
    
}