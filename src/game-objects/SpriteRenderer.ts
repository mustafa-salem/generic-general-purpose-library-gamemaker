import { MonoBehaviour } from "./MonoBehaviour";

/**
 * A component that simply draws a sprite at the game object position.
 */
export class SpriteRenderer extends MonoBehaviour {

    public sprite_index: number;
    public image_index: number;
    public image_speed: number;
    public image_xscale: number;
    public image_yscale: number;
    public image_alpha: number;

}