export class Interpolation {
    
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
    
    /**
     * Linear interpolation
     * @param a 
     * @param b 
     * @param amount 
     * @returns 
     */
    public static lerp(a: number, b: number, amount: number): number {
        return 0;
    }
    
    /**
     * Inverse Linear interpolation
     * @param minimum 
     * @param maximum 
     * @param value 
     * @returns 
     */
    public static inverseLerp(minimum, maximum, value) {
        return (value - minimum) / (maximum - minimum)
    }
}