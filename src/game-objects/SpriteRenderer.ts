import { MonoBehaviour } from "./MonoBehaviour";
import { SpriteElement } from "@gamemaker/input-output/SpriteElement";

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

    // new SpriteElement();

    #sprite;

    /**
     * 
     */
    public get sprite(): SpriteAsset {

    }

    public set sprite(sprite): SpriteAsset {
        
    }

}