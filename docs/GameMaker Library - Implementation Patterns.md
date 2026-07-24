# GameMaker Library - Implementation Patterns

## GameMaker

### Rule 1: Always use `self` when accessing the context's own variables/methods

### Rule 2: Don't use `with`

## GameMaker Library

### `with`

```
with (<Object Asset>) {
    <statement>;
}
```

```
var _instances = <Object Asset>;
for (var i = 0; i < array_length(_instances); i++) {
    _instances[i];
}
```

###

When a construct is to be created
```

```

When an instance of a construct is to be created
```
gamemaker_construct("");
gamemaker_construct("").instantiate({ position: { x: _, y: _ } });
gamemaker_construct("").instantiate({ position: { x: _, y: _ }, variables: { } });
gamemaker_construct("").instantiate({ layer: gamemaker_layer(""), position: { x: _, y: _ } });
```

When something is to destroy itself
```
self.destroy();
return undefined;
```

When a sound is to be played
```
gamemaker_sound_play({ sound: snd_bell })
```

### Text

---

```
draw_set_font   -> set_formatting.font
draw_set_halign -> set_alignment.x
draw_set_valign -> set_alignment.y
draw_set_colour -> set_blending.colour
draw_set_alpha  -> set_blending.alpha

.set_formatting({ font: draw_get_font() })
.set_alignment({ x : draw_get_halign(), y : draw_get_valign() })
.set_blending({ colour : draw_get_colour(), alpha : draw_get_alpha() })
```

---

```
gamemaker_textelement_create({ string: string })
.set_position({ x: x, y: y })
.draw();
```

---

```
draw_text_ext(x, y, string, sep, w)
```

```
gamemaker_textelement_create({ string: string })
.set_position({ x: x, y: y })
.draw()
```

---

```
draw_text_colour(x, y, string, c1, c2, c3, c4, alpha)
```

```
gamemaker_textelement_create({ string: string })
.set_position({ x: x, y: y })
.draw()
```

---

```
draw_text_transformed(x, y, string, xscale, yscale, angle)
```

```
gamemaker_textelement_create({ string: string })
.set_scaling({ x : xscale, y : yscale })
.set_rotation({ z : angle })
.set_position({ x: x, y: y })
.draw()
```

---

```
draw_text_ext_colour(x, y, string, sep, w, c1, c2, c3, c4, alpha)
```

```
gamemaker_textelement_create({ string: string })
.set_position({ x: x, y: y })
.draw()
```

---

```
draw_text_ext_transformed(x, y, string, sep, w, xscale, yscale, angle)
```

```
gamemaker_textelement_create({ string: string })
.set_position({ x: x, y: y })
.draw()
```

---

```
draw_text_transformed_colour(x, y, string, xscale, yscale, angle, c1, c2, c3, c4, alpha)
```

```
gamemaker_textelement_create({ string: string })
.set_position({ x: x, y: y })
.draw();
```

---

```
draw_text_ext_transformed_colour(x, y, string, sep, w, xscale, yscale, angle, c1, c2, c3, c4, alpha)
```

```
gamemaker_textelement_create({ string: string })
.set_position({ x: x, y: y })
.draw()
```

## DELTARUNE

```
Simulation.onWeirdRoute
```

```
PartyInstance.hasCharactersWithName({ characters : "susie" })
```

When an overworld in-game entity should execute a simple dialogue interaction
```
// deltarune_dialoguer_create({ source : "YAVNQC.yarn", node: "II05YR" });
gamemaker_construct("Simple Dialogue Interaction In-Game Event").instantiate("");
```

```
(self.get_countercount("Interaction Command Counter") == 0)
```

```
self.attemptto_placecounters("Interaction Command Counter", 1);
```

```
add_tags
```