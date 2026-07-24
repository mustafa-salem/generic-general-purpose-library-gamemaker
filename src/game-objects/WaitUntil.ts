import { YieldInstruction } from "./YieldInstruction";

/**
 * In a coroutine function, yield an instance of this instruction to make the coroutine pause until a condition is true.
 */
export class WaitUntil extends YieldInstruction {

    readonly #predicate: () => boolean;

    public constructor(predicate: () => boolean) {
        super();
        this.#predicate = predicate;
    }

}