export class Vector2 {

    #x: number = 0;
    #y: number = 0;

    public constructor({ x, y }: { x: number, y: number }) {

        this.#x = x;
        this.#y = y;

    }

    public get x(): number {
        return this.#x;
    }

    public set x(x: number) {
        this.#x = x;
    }

    public get y(): number {
        return this.#y;
    }

    public set y(y: number) {
        this.#y = y;
    }


}