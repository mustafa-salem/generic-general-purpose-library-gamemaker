export class Interpolation {
    
    public static inverse_lerp(minimum, maximum, value) {
        return (value - minimum) / (maximum - minimum)
    }

    public static lerp(a: number, b: number, amount: number): number {
        return 0;
    }

}