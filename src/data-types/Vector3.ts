export class Vector3 {

    #x: number = 0;
    #y: number = 0;
    #z: number = 0;

    public constructor(x: number, y: number, z: number) {

        this.#x = x;
        this.#y = y;
        this.#z = z;

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

    public get z(): number {
        return this.#y;
    }

    public set z(y: number) {
        this.#y = y;
    }

}