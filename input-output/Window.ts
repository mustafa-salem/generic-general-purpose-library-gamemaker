export class Window {

    window_handle;
    window_has_focus;

    window_set_showborder;
    window_get_showborder;

    window_get_visible_rects;
    window_set_rectangle;

    /**
     * set_default_caption
     */
    public static gamemaker_window_set_default_caption(parameters) {

    }

    /// This function is used to change the caption of the game window.
    /// NOTE: This is a generification of 'window_set_caption'.
    /// NOTE: The window caption is independent of the current room even though the
    /// GameMaker manual claims otherwise.
    /// @param {string} string The caption to display.
    /// @returns {Undefined}

    /**
     * 
     */
    public static set_caption(parameters): void {

        var _string = parameters["string"];
        window_set_caption(_string);

    }

    /**
     * reset_caption
     */
    gamemaker_window_reset_caption(): void {

    }

    /**
     * 
     */
    public static get backgroundColour(): Colour {

        return window_get_colour();

    }

    /**
     * 
     */
    public static set backgroundColour(colour): void {

        window_set_colour(colour);
        return;

    }

    /// Returns whether the game window is in fullscreen mode.

    /**
     * 
     */
    public static get_fullscreen(): boolean {

        return window_get_fullscreen();

    }

    /// 
    /// @param {Bool} fullscreen
    /// @returns {Undefined}

    /**
     * 
     */
    public static set_fullscreen(): void {

        window_set_fullscreen(parameters.fullscreen);
        return;

    }

    /// Centers the game window on the display/browser.
    /// **NOTE:** Windows, Ubuntu, macOS, and HTML5 only
    /// **NOTE:** If you have resized the game window in the current step, by switching from full screen to windowed or using window_set_size(), this function should be called at least 10 steps later.
    /// @returns {Undefined}

    /**
     * 
     */
    public static center(): void {

        window_center();
        return;
        /// gamemaker_call_later({ delay_frames: 1, callback : window_center });
        /// do this manually to avoid delay
        /// window_set_position(x, y)

    }

    /**
     * 
     */
    public get position(): Vector2 {

        const x = window_get_x();
        const y = window_get_y();

        return new Vector2({ x, y });

    }

    /**
     * 
     */
    public set position(position: Vector2) {

        window_set_position(position.x, position.y);

        return;

    }

    /**
     * get_x_dimension
     * get_y_dimension
     */
    public static get_dimensions(): Vector2 {

        const x = window_get_width();
        const y = window_get_height();

        return new Vector2({ x, y });

    }

    /**
     * 
     */
    public static set_dimensions(dimensions: Vector2) {

        window_set_size(dimensions.x, dimensions.y);

        return;

    }

    /**
     * set_x_minimum_dimensions
     * set_y_minimum_dimensions
     */
    public static set_minimum_dimensions(dimensions: Vector2) {

        window_set_min_width(dimensions.x);

        window_set_min_height(dimensions.y);

    }

    /**
     * set_x_maximum_dimensions
     * set_y_maximum_dimensions
     */
    public static set_maximum_dimensions(dimensions: Vector2) {
        
        window_set_max_width(dimensions.x);
        
        window_set_max_height(dimensions.y);

    }

    /// This function is used to get the aspect ratio of the current game window.
    /// @returns {Real}
    /**
     * get_aspect_ratio
     */
    public static aspectratio(): number {
        
        return (Window.dimensions.x / Window.dimensions.y);

    }

}