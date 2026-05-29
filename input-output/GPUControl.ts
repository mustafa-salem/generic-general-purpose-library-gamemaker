import { BlendMode } from "./BlendMode";

export class GPUControl {

    public static get blendenable(): boolean {
        return gpu_get_blendenable();
    }

    public static set blendenable(blendenable: boolean) {
        gpu_set_blendenable(blendenable);
    }

    /**
     * Gets the current blend mode being used for drawing. 
     */
    public static get blendmode(): BlendMode {
        return new BlendMode();
    }

    /**
     * Sets the blend mode to be used for drawing. 
     */
    public static set blendmode(blendmode: BlendMode) {

        /*

        {
            source_colour_blendmode      = bm_src_alpha,
            source_alpha_blendmode       = bm_src_alpha,
            destination_colour_blendmode = bm_inv_src_alpha,
            destination_alpha_blendmode  = bm_inv_src_alpha,
        }

        if (struct_exists(a, "set")) {
            if (a.set == BlendMode.Default) {
                p.source_alpha_blendmode = bm_one
            } else if (a.set == BlendMode.Additive) {
                gpu_set_blendmode(bm_add)
            } else {
                gpu_set_blendmode_ext_sepalpha(
                    p.source_colour_blendmode,
                    p.destination_colour_blendmode,
                    p.source_alpha_blendmode,
                    p.destination_alpha_blendmode,
                )
            }
        }

        */

    }

}