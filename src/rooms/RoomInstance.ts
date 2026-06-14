import { Layer } from "./Layer";

export class RoomInstance {

    public get layers(): Layer[] {
        return layer_get_all();
    }

}