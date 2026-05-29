export class Transform {

    #position;
    #rotation;
    #scale;

    public get position() {
        return this.#position;
    }

    public get rotation() {
        return this.#rotation;
    }

    public get scale() {
        return this.#scale;
    }

}