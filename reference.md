# Textelements

## Functions

### Basics

`gamemaker_textelement_create({ string })`<br>
`gamemaker_textelement_set_formatting({ textelement, font, colour })`<br>
`gamemaker_textelement_set_alignment({ textelement, x, y })`<br>
`gamemaker_textelement_set_blending({ textelement, colour, alpha })`<br>
`gamemaker_textelement_set_position({ textelement, x, y })`<br>
`gamemaker_textelement_draw({ textelement })`<br>

### Pages

`gamemaker_textelement_get_pagecount({ textelement })`<br>
`gamemaker_textelement_get_pageindex({ textelement })`<br>
`gamemaker_textelement_is_onlastpage({ textelement })`<br>
`gamemaker_textelement_goto_page({ textelement, index })`

## Methods

```
draw_set_font   -> set_formatting.font
draw_set_halign -> set_alignment.x
draw_set_valign -> set_alignment.y
draw_set_colour -> set_blending.colour
draw_set_alpha  -> set_blending.alpha

.set_formatting({ font : draw_get_font() })
.set_alignment({ x : draw_get_halign(), y : draw_get_valign() })
.set_blending({ colour : draw_get_colour(), alpha : draw_get_alpha() })
```

```
draw_text(x, y, string)

gamemaker_textelement_create({ string : string })
.set_position({ x : x, y : y })
.draw()
```

```
draw_text_ext(x, y, string, sep, w)

gamemaker_textelement_create({ string : string })
.set_position({ x : x, y : y })
.draw()
```

```
draw_text_colour(x, y, string, c1, c2, c3, c4, alpha)

gamemaker_textelement_create({ string : string })
.set_position({ x : x, y : y })
.draw()
```

```
draw_text_transformed(x, y, string, xscale, yscale, angle)

gamemaker_textelement_create({ string : string })
.set_scaling({ x : xscale, y : yscale })
.set_rotation({ z : angle })
.set_position({ x : x, y : y })
.draw()
```

```
draw_text_ext_colour(x, y, string, sep, w, c1, c2, c3, c4, alpha)

gamemaker_textelement_create({ string : string })
.set_position({ x : x, y : y })
.draw()
```

```
draw_text_ext_transformed(x, y, string, sep, w, xscale, yscale, angle)

gamemaker_textelement_create({ string : string })
.set_position({ x : x, y : y })
.draw()
```

```
draw_text_transformed_colour(x, y, string, xscale, yscale, angle, c1, c2, c3, c4, alpha)

gamemaker_textelement_create({ string : string })
.set_position({ x : x, y : y })
.draw()
```

```
draw_text_ext_transformed_colour(x, y, string, sep, w, xscale, yscale, angle, c1, c2, c3, c4, alpha)

gamemaker_textelement_create({ string : string })
.set_position({ x : x, y : y })
.draw()
```

```
.set_maximumdimensions({ x : , y :  })
.set_outline({ thickness : , colour :  })
.set_gradient({ colour : , alpha :  })
```

```
gamemaker_textelement_create({ string : string })
.set_formatting({ font, colour })
.set_blending({ colour, alpha })
.set_gradient({ colour : , alpha :  })
.set_position({ x : x, y : y })
.draw()
```

### Basics

`.set_formatting({ font, colour })`<br>
`.set_alignment({ x, y })`<br>
`.set_blending({ colour, alpha })`<br>
`.set_position({ x, y })`<br>
`.draw()`<br>

### Pages

`.get_pagecount()`<br>
`.get_pageindex()`<br>
`.is_onlastpage()`<br>
`.goto_page({ index })`