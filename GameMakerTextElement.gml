// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― CONSTANTS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――― CONSTANTS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#region    ―――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――

function GameMakerTextElement() constructor {

    #region    ―――――――――――――――――――― SUBREGION_NAME ――――――――――――――――――――
    
    static private = {
        id : 0,
    }

    static id_counter = 0

	self.private = {
		id : 0,
        font
        colour
        x_alignment
        y_alignment
        blend_colour
    }

    private.id = id_counter
    id_counter++

    // SCRIBBLE_ELEMENT
    private.scribble_text_element.scribble(private.string, private.id)

    static create = function(arguments = {}) {
        return new GameMakerTextElement(arguments)
    }

    static get_scribble_text_element = function(arguments = {}) {
        return private.scribble_text_element
    }

    static set_scale = function(parameters = {}) {
        if (parameters[$ "x"] != undefined) { private.scale.x = parameters.x }
        if (parameters[$ "y"] != undefined) { private.scale.y = parameters.y }
        private.scribble_text_element.transform(private.scale.x, private.scale.y, private.rotation * 360)
        return self
    }

    self.set_scale = method(self, set_scale)

    static set_solid_blend = function(arguments = {}) {
        return self
    }

    static set_gradient_blend = function(arguments = {}) {
        return self
    }

    static add_drop_shadow = function(arguments = {}) {
        var _colour, xoffset, yoffset
        return self
    }

    set_line_height = function(parameters = {}) {
        private.scribble_text_element.line_height(parameters.minimum, parameters.maximum)
        return self
    }

    set_leading = function(parameters = {}) {
        private.scribble_text_element.line_spacing(parameters.leading)
        return self
    }

    set_skew = function(parameters = {}) {
        private.scribble_text_element.skew(parameters.x, parameters.y)
        return self
    }

    #endregion ―――――――――――――――――――― SUBREGION_NAME ――――――――――――――――――――

    static set_formatting = function(arguments = {}) {
        parameters.textelement = self
        gamemaker_textelement_set_formatting(parameters)
        return self
    }

    static set_alignment = function(parameters = {}) {
        parameters.textelement = self
        gamemaker_textelement_set_alignment(parameters)
        return self
    }

    static set_blending = function(parameters = {}) {
        parameters.textelement = self
        gamemaker_textelement_set_blending(parameters)
        return self
    }

    static set_position = function(arguments) {
		if (!is_undefined(arguments[$ "x"])) { private.position.x = arguments.x }
		if (!is_undefined(arguments[$ "y"])) { private.position.y = arguments.y }
        return self
    }

    static draw = function(parameters = {}) {
        parameters.textelement = self
        gamemaker_textelement_draw(parameters)
        return self
    }
    
    static get_pagecount = function(parameters = {}) {
        parameters.textelement = self
        return gamemaker_textelement_get_pagecount(parameters)
    }

    static get_pageindex = function(parameters = {}) {
        parameters.textelement = self
        return gamemaker_textelement_get_pageindex(parameters)
    }

    static is_onlastpage = function(parameters = {}) {
        parameters.textelement = self
        return gamemaker_textelement_is_onlastpage(parameters)
    }

    static goto_page = function(parameters = {}) {
        parameters.textelement = self
        return gamemaker_textelement_get_pageindex(parameters)
    }

    self.set_formatting = method(self, set_formatting)
    self.set_alignment  = method(self, set_alignment)
    self.set_blending = method(self, set_blending)
    self.set_position = method(self, set_position)
    self.draw = method(self, draw)

    self.get_pagecount = method(self, get_pagecount)
    self.get_pageindex = method(self, get_pageindex)
    self.is_onlastpage = method(self, is_onlastpage)
    self.goto_page     = method(self, goto_page)

}

// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#endregion ―――――――――――――――――――― CONSTRUCTORS ――――――――――――――――――――
// ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――