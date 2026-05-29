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
        return 0;
    }

    public static shuffle<T>(array: T[]): void {
        return;
    }

    public static toShuffled<T>(array: T[]): T[] {
        return array;
    }

}