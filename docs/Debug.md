# Debug

* ``"`parameters` must be a struct."``
* `/// **NOTE:**`
* `/// **SEE:**`

## Guard Clauses

```
if (argument_count != 1) {
    throw new ArgumentCountError($"'argument_count' must be 1, but is {argument_count}.");
}
```

```
if (typeof(parameters) != "struct") {
    throw new InvalidArgumentException($"'parameters' must be a struct, but is a {typeof(parameters)} (value: {parameters}).");
}
```

Guards
* `gamemaker_guard(not struct_exists(parameters, "<name>"), "'<name>' must be passed.");`
* `gamemaker_guard(typeof(parameters.<name>) != <type>, "'<name>' must be a <type>.");`

Params
* `/// @param {Struct} parameters The struct containing the arguments to pass to the function.`

## Throwables

* `Throwable`
    * `Error`
    * `Exception`