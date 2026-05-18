export class Surface {

    #handle = null;

    /**
     * gamemaker_surface_exists
     */
    public exists(): boolean {
        return false;
    }

    /**
     * gamemaker_surface_destroy
     */
    public destroy(): this {
        return this;
    }

    /**
     * gamemaker_surface_draw
     */
    public draw(): this {
        return this;
    }

}