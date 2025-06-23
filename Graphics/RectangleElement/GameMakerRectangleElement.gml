/******************************************************************************/
#region    –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/

function GameMakerRectangleElement() constructor {

	private = {
		position : {
			x : 0,
			y : 0,
		},
		dimensions : {
			x : 0,
			y : 0,
		},
		alignment : {
			x : 0,
			y : 0,
		},
		scale : {
			x : 1,
			y : 1,
		},
		rotation : {
			x : 0,
			y : 0,
			z : 0,
		},
		solid_fill : {
			colour : #FFFFFF,
			alpha  : 0,
		},
		gradient_fill : {
			colour : {
				top_left     : #FFFFFF,
				top_right    : #FFFFFF,
				bottom_left  : #FFFFFF,
				bottom_right : #FFFFFF,
			},
			alpha : {
				top_left     : 0,
				top_right    : 0,
				bottom_left  : 0,
				bottom_right : 0,
			},
		},
		solid_outline : {
			thickness : 0,
			alignment : 0,
			colour    : #FFFFFF,
			alpha     : 0,
		},
		alpha : 1,
	}

	/// ----------------------------------------------------------------------------
    /// # position
    /// ----------------------------------------------------------------------------
    self.get_x_position = method(self, Drawable.get_x_position)
    self.get_y_position = method(self, Drawable.get_y_position)
    self.set_position   = method(self, Drawable.set_position)

	/// ----------------------------------------------------------------------------
	/// # alignment
	/// ----------------------------------------------------------------------------
	self.get_x_alignment = method(self, Drawable.get_x_alignment)
	self.get_y_alignment = method(self, Drawable.get_y_alignment)
	self.set_alignment   = method(self, Drawable.set_alignment)

	/// ----------------------------------------------------------------------------
	/// # dimensions
	/// ----------------------------------------------------------------------------
	self.get_x_dimension = method(self, Drawable.get_x_dimension)
	self.get_y_dimension = method(self, Drawable.get_y_dimension)
	self.set_dimensions   = method(self, Drawable.set_dimensions)

    /// ----------------------------------------------------------------------------
    /// # scale
    /// ----------------------------------------------------------------------------
    self.get_x_scale = method(self, Drawable.get_x_scale)
    self.get_y_scale = method(self, Drawable.get_y_scale)
    self.set_scale   = method(self, Drawable.set_scale)

	/// ----------------------------------------------------------------------------
	/// # rotation
	/// ----------------------------------------------------------------------------
	self.get_x_rotation = method(self, Drawable.get_x_rotation)
	self.get_y_rotation = method(self, Drawable.get_y_rotation)
	self.get_z_rotation = method(self, Drawable.get_z_rotation)
	self.set_rotation   = method(self, Drawable.set_rotation)

	/// ----------------------------------------------------------------------------
	/// # blending
	/// ----------------------------------------------------------------------------
	private.blend_colour = 0
	private.blend_alpha  = 0
	private.blendmode   = 0

	self.get_blend_colour = method(self, Drawable.get_blend_colour)
	self.get_blend_alpha  = method(self, Drawable.get_blend_alpha)
	self.get_blendmode   = method(self, Drawable.get_blendmode)
	self.set_blend        = method(self, Drawable.set_blend)

	#region    –––––––––––––––––––– COLOUR_SOLID_FILL ––––––––––––––––––––

	/// ----------------------------------------------------------------------------
	/// @function get_colour_solid_fill()
	/// ----------------------------------------------------------------------------
	/// @returns {Real}
	/// _colour_solid_fill
	/// ----------------------------------------------------------------------------
	static get_colour_solid_fill = function() {
		return private.solid_fill.colour
	}

	/// ----------------------------------------------------------------------------
	/// @function set_colour_solid_fill(_colour_solid_fill)
	/// ----------------------------------------------------------------------------
	/// @param {Real}
	/// _colour_solid_fill
	/// ----------------------------------------------------------------------------
	/// @returns {Struct.GameMakerRectangleElement}
	/// ----------------------------------------------------------------------------
	static set_colour_solid_fill = function(_colour_solid_fill) {
		if (!is_real(_colour_solid_fill)) {
			// new InvalidTypeErrorGeneric()
			return self
		}
		private.solid_fill.colour = clamp(_colour_solid_fill, #000000, #FFFFFF)
		return self
	}

	#endregion –––––––––––––––––––– COLOUR_SOLID_FILL ––––––––––––––––––––

	#region    –––––––––––––––––––– ALPHA_SOLID_FILL ––––––––––––––––––––

	/// ----------------------------------------------------------------------------
	/// @function get_alpha_solid_fill()
	/// ----------------------------------------------------------------------------
	/// @returns {Real}
	/// _alpha_solid_fill
	/// ----------------------------------------------------------------------------
	static get_alpha_solid_fill = function() {
		return private.solid_fill.alpha
	}

	/// ----------------------------------------------------------------------------
	/// @function set_alpha_solid_fill(_alpha_solid_fill)
	/// ----------------------------------------------------------------------------
	/// @param {Real} _alpha_solid_fill
	/// _alpha_solid_fill
	/// ----------------------------------------------------------------------------
	/// @returns {Struct.GameMakerRectangleElement} self
	/// ----------------------------------------------------------------------------
	static set_alpha_solid_fill = function(_alpha_solid_fill) {
		if (!is_real(_alpha_solid_fill)) {
			// new InvalidTypeErrorGeneric()
			return self
		}
		private.solid_fill.alpha = clamp(_alpha_solid_fill, 0, 1)
		return self
	}

	#endregion –––––––––––––––––––– ALPHA_SOLID_FILL ––––––––––––––––––––

	#region    –––––––––––––––––––– SOLID_FILL ––––––––––––––––––––

	/// ----------------------------------------------------------------------------
	/// @function get_solid_fill()
	/// ----------------------------------------------------------------------------
	static get_solid_fill = function() {
		return variable_clone(private.solid_fill)
	}

	/// ----------------------------------------------------------------------------
    /// @function set_solid_fill(arguments)
    /// ----------------------------------------------------------------------------
	static set_solid_fill = function(arguments = {}) {
		if (!is_struct(arguments)) {
			// new InvalidTypeErrorGeneric()
			return self
		}
		if (arguments[$ "colour"] != undefined) { set_colour_solid_fill(arguments.colour) }
		if (arguments[$ "alpha"]  != undefined) { set_alpha_solid_fill(arguments.alpha)   }
		return self
	}

	#endregion –––––––––––––––––––– SOLID_FILL ––––––––––––––––––––

	#region    –––––––––––––––––––– COLOUR_GRADIENT_FILL ––––––––––––––––––––

	static get_colour_gradient_fill = function() {

	}

	static set_colour_gradient_fill = function() {

	}

	#endregion –––––––––––––––––––– COLOUR_GRADIENT_FILL ––––––––––––––––––––

	#region    –––––––––––––––––––– ALPHA_GRADIENT_FILL ––––––––––––––––––––

	static get_alpha_gradient_fill = function() {

	}

	static set_alpha_gradient_fill = function() {

	}

	#endregion –––––––––––––––––––– ALPHA_GRADIENT_FILL ––––––––––––––––––––

	#region    –––––––––––––––––––– GRADIENT_FILL ––––––––––––––––––––

	/// ----------------------------------------------------------------------------
	/// @function get_gradient_fill()
	/// ----------------------------------------------------------------------------
	static get_gradient_fill = function() {
		return variable_clone(private.gradient_fill)
	}

	/// ----------------------------------------------------------------------------
	/// @function set_gradient_fill(arguments)
	/// ----------------------------------------------------------------------------
	static set_gradient_fill = function(arguments = {}) {
		if (!is_struct(arguments)) {
			// new InvalidTypeErrorGeneric()
			return self
		}
		if (arguments[$ "all"] != undefined) {

		}
		if (arguments[$ "top"] != undefined) {
			arguments.top_left  = arguments.top
			arguments.top_right = arguments.top
		}
		if (arguments[$ "bottom"] != undefined) {
			arguments.bottom_left  = arguments.bottom
			arguments.bottom_right = arguments.bottom
		}
		if (arguments[$ "left"] != undefined) {
			arguments.top_left    = arguments.left
			arguments.bottom_left = arguments.left
		}
		if (arguments[$ "right"] != undefined) {
			arguments.top_right    = arguments.right
			arguments.bottom_right = arguments.right
		}
		if (arguments[$ "top_left"] != undefined)      {  }
		if (arguments[$ "top_right"]  != undefined)    {  }
		if (arguments[$ "bottom_left"] != undefined)   {  }
		if (arguments[$ "bottom_right"]  != undefined) {  }
		return self
	}

	#endregion –––––––––––––––––––– GRADIENT_FILL ––––––––––––––––––––

	#region    –––––––––––––––––––– THICKNESS_SOLID_OUTLINE ––––––––––––––––––––

	static get_thickness_solid_outline = function() {
		return private.solid_outline.thickness
	}

	static set_thickness_solid_outline = function(_thickness) {
		return self
	}

	#endregion –––––––––––––––––––– THICKNESS_SOLID_OUTLINE ––––––––––––––––––––

	#region    –––––––––––––––––––– ALIGNMENT_SOLID_OUTLINE ––––––––––––––––––––

	static get_alignment_solid_outline = function() {
		return private.solid_outline.alignment
	}

	static set_alignment_solid_outline = function(_alignment) {
		return self
	}

	#endregion –––––––––––––––––––– ALIGNMENT_SOLID_OUTLINE ––––––––––––––––––––

	#region    –––––––––––––––––––– COLOUR_SOLID_OUTLINE ––––––––––––––––––––

	/// ----------------------------------------------------------------------------
	/// @function get_colour_solid_outline()
	/// ----------------------------------------------------------------------------
	/// @returns {Real}
	/// colour_solid_outline
	/// ----------------------------------------------------------------------------
	static get_colour_solid_outline = function() {
		return private.solid_outline.colour
	}

	/// ----------------------------------------------------------------------------
	/// @function set_colour_solid_outline(_colour_solid_outline)
	/// ----------------------------------------------------------------------------
	/// @param {Real} _colour_solid_outline
	/// colour_solid_outline
	/// ----------------------------------------------------------------------------
	/// @returns {Struct.GameMakerRectangleElement}
	/// ----------------------------------------------------------------------------
	static set_colour_solid_outline = function(_colour_solid_outline) {
		if (!is_real(_colour_solid_outline)) {
			// new InvalidTypeErrorGeneric()
			return self
		}
		private.solid_outline.colour = clamp(_colour_solid_outline, #000000, #FFFFFF)
		return self
	}

	#endregion –––––––––––––––––––– COLOUR_SOLID_OUTLINE ––––––––––––––––––––

	#region    –––––––––––––––––––– ALPHA_SOLID_OUTLINE ––––––––––––––––––––

	/// ----------------------------------------------------------------------------
	/// @function get_alpha_solid_outline()
	/// ----------------------------------------------------------------------------
	/// @returns {Real}
	/// alpha_solid_outline
	/// ----------------------------------------------------------------------------
	static get_alpha_solid_outline = function() {
		return private.solid_outline.alpha
	}

	/// ----------------------------------------------------------------------------
	/// @function set_alpha_solid_fill(_alpha_solid_outline)
	/// ----------------------------------------------------------------------------
	/// @param {Real} _alpha_solid_outline
	/// alpha_solid_outline
	/// ----------------------------------------------------------------------------
	/// @returns {Struct.GameMakerRectangleElement} self
	/// ----------------------------------------------------------------------------
	static set_alpha_solid_outline = function(_alpha_solid_outline) {
		if (!is_real(_alpha_solid_outline)) {
			// new InvalidTypeErrorGeneric()
			return self
		}
		private.solid_outline.alpha = clamp(_alpha_solid_outline, 0, 1)
		return self
	}

	#endregion –––––––––––––––––––– ALPHA_SOLID_OUTLINE ––––––––––––––––––––

	#region    –––––––––––––––––––– SOLID_OUTLINE ––––––––––––––––––––

	/// ----------------------------------------------------------------------------
	/// @function get_solid_outline()
	/// ----------------------------------------------------------------------------
	static get_solid_outline = function() {
		return variable_clone(private.solid_outline)
	}

	/// ----------------------------------------------------------------------------
	/// @function set_solid_outline(arguments)
	/// ----------------------------------------------------------------------------
	static set_solid_outline = function(arguments = {}) {
		if (!is_struct(arguments)) {
			// new InvalidTypeErrorGeneric()
			return self
		}
		if (arguments[$ "thickness"] != undefined) { set_thickness_solid_outline(arguments.colour) }
		if (arguments[$ "alignment"] != undefined) { set_alignment_solid_outline(arguments.alpha)  }
		if (arguments[$ "colour"]    != undefined) { set_colour_solid_outline(arguments.colour)    }
		if (arguments[$ "alpha"]     != undefined) { set_alpha_solid_outline(arguments.alpha)      }
		return self
	}

	#endregion –––––––––––––––––––– SOLID_OUTLINE ––––––––––––––––––––

	/// ----------------------------------------------------------------------------
	/// @function draw(arguments)
	/// ----------------------------------------------------------------------------
	static draw = function() {

		var _x1 = get_x_position() - get_x_alignment() * get_x_dimension() * get_x_scale()
		var _y1 = get_y_position() - get_y_alignment() * get_y_dimension() * get_y_scale()
		var _x2 = _x1 + get_x_dimension() * get_x_scale()
		var _y2 = _y1 + get_y_dimension() * get_y_scale()

		var _colour = get_colour_solid_fill()
		var _alpha  = get_alpha_solid_fill()

		var _vertices = [
			{ x : _x1, y : _y1 },
			{ x : _x1, y : _y2 },
			{ x : _x2, y : _y1 },
			{ x : _x1, y : _y2 },
			{ x : _x2, y : _y1 },
			{ x : _x2, y : _y2 },
		]

		// BEGIN_DRAW
		draw_primitive_begin(pr_trianglelist);

		for (var i = 0; i < array_length(_vertices); i++) {
			var _new_x, _new_y, _new_z, _rotation

			var _vertex = _vertices[i]

			/* –––––––––––––––––––– GLOBAL_ORIGIN –––––––––––––––––––– */
			var _x = _vertex.x
			var _y = _vertex.y
			var _z = 0

			_x -= get_x_position()
			_y -= get_y_position()

			/* –––––––––––––––––––– X_ROTATION –––––––––––––––––––– */
			_rotation = - get_x_rotation() * 2 * pi

			if (_rotation != 0) {
				_new_y = _y * cos(_rotation) - _z * sin(_rotation)
				_new_z = _y * sin(_rotation) + _z * cos(_rotation)

				_y = _new_y
				_z = _new_z

			}

			/* –––––––––––––––––––– Y_ROTATION –––––––––––––––––––– */
			_rotation = - get_y_rotation() * 2 * pi

			if (_rotation != 0) {
				_new_x =  _x * cos(_rotation) + _z * sin(_rotation)
				_new_z = -_x * cos(_rotation) + _z * cos(_rotation)

				_x = _new_x
				_z = _new_z
			}

			/* –––––––––––––––––––– Z_ROTATION –––––––––––––––––––– */
			_rotation = - get_z_rotation() * 2 * pi

			if (_rotation != 0) {
				_new_x = _x * cos(_rotation) - _y * sin(_rotation)
				_new_y = _x * sin(_rotation) + _y * cos(_rotation)

				_x = _new_x
				_y = _new_y
			}

			/* –––––––––––––––––––– LOCAL_ORIGIN –––––––––––––––––––– */
			_x += get_x_position()
			_y += get_y_position()

			_vertex.x = _x
			_vertex.y = _y

			 draw_vertex_colour(_vertex.x, _vertex.y, _colour, _alpha)
		}

		// END_DRAW
		draw_primitive_end()

		return self
	}

}

/******************************************************************************/
#endregion –––––––––––––––––––– CONSTRUCTORS ––––––––––––––––––––
/******************************************************************************/
