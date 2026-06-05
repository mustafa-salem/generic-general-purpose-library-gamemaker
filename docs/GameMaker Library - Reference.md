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
.set_maximumdimensions({ x : , y :  })
.set_outline({ thickness : , colour :  })
.set_gradient({ colour : , alpha :  })
```

```
gamemaker_textelement_create({ string: string })
.set_formatting({ font, colour })
.set_blending({ colour, alpha })
.set_gradient({ colour : , alpha :  })
.set_position({ x: x, y: y })
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