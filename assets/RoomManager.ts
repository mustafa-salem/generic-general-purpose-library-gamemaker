export class RoomManager {

    static #currentRoom: object | null = null;

    public static get currentRoom(): object | null {
        return this.#currentRoom;
    }

}