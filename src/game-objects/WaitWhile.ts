import { YieldInstruction } from "./YieldInstruction";

/**
 * In a coroutine function, yield an instance of this instruction to make the coroutine pause while a condition is true.
 */
export class WaitWhile extends YieldInstruction {

    #predicate: () => boolean;

    public constructor(predicate: () => boolean) {
        super();
        this.#predicate = predicate;
    }

}