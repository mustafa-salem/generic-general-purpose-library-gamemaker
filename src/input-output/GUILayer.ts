import { Vector2 } from "../data-types/Vector2";

/**
 * 
 */
export class GUILayer {
    
    /**
     * Gets the width of the gui in pixels.
     * Gets the height of the gui in pixels.
     */
    public static get dimensions(): Vector2 {
        return new Vector2(display_get_gui_width(), display_get_gui_height());
    }

    /**
     * Sets the dimensions of the gui.
     */
    public static set dimensions(dimensions: Vector2) {
        display_set_gui_size(dimensions.x, dimensions.y);
    }

    /**
     * xscale The horizontal scaling factor (use -1 to reset to default).
     * yscale The vertical scaling factor (use -1 to reset to default).
     * xoffset The x offset position for drawing.
     * yoffset The y offset position for drawing.
     */
    public static maximise({ xscale, yscale, xoffset, yoffset }) {
        display_set_gui_maximise(xscale, yscale, xoffset, yoffset);
    }

}