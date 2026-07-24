import { YieldInstruction } from "./YieldInstruction";

/**
 * A generator returned by a coroutine method.
 * Yielding null will suspend execution until the next frame.
 */
export type Coroutine = Generator<YieldInstruction | null>;