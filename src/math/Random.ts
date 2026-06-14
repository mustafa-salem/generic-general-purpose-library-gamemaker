export class Random {

    /**
     * Randomly returns -1 or 1.
     */
    public static sign(): -1 | 1 {
        return Math.random() < 0.5 ? -1 : 1;
    }

    /**
     *  Returns a random element from the array.
     */
    public static choose<T>(array: T[]): T {
        const index = Math.floor(Math.random() * array.length);
        return array[index];
    }

    public static range(a: number, b: number): number {
        const minimum = Math.min(a, b);
        const maximum = Math.max(a, b);
        const range = Math.abs(maximum - minimum);
        return minimum + Math.random() * range;
    }

    public static rangeInteger(a: number, b: number): number {
        const minimum = Math.min(a, b);
        const maximum = Math.max(a, b);
        const range = Math.abs(maximum - minimum);
        return Math.floor(1 + minimum + Math.random() * range);
    }

    public static shuffle<T>(array: T[]): void {
        return;
    }

    public static toShuffled<T>(array: T[]): T[] {
        return array;
    }

    /// repeatable, sample, population, weight

    /// This function is used to choose a number of elements randomly.
    /// @param {Array<any>} parameter_name
    /// The options.
    /// @param {Array<number>} [weights]
    /// The probabilities to choose an option.
    /// @param {Real} [k=1]
    /// The number of elements to choose.
    /// @returns {Array<any>}
    public static weightedChoice(parameters = {}) {
        return _return
    }
    
    /// Checks whether a random event with a certain percentage likelyhood should happen.
    public static chance(probability: number): boolean {
        return Math.random() < probability; 
    }

}