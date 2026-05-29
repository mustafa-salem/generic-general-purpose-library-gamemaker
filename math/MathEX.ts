export class MathEX {

    /**
     * Returns a value limiting it to a range between a minimum and a maximum value.
     * @param x - The value to clamp.
     * @param minimum 
     * @param maximum 
     * @returns
     */
    public static clamp(x: number, minimum: number, maximum: number): number {
        return Math.max(minimum, Math.min(x, maximum));
    }

}