# configuration

you can use the config.toml file to configure habitmap. currently, there are only three things to configure.

## default stepno
default value: `stepno = 4`

everytime a new habit is made, its stepno will by this number by default.

## default color
default value: `defcol = ['ffffff']`

everytime a map is printed without specifying colors, these colors are used instead. you can put a single color or multiple colors here, but make sure they are in the form of a list or array.

having the default colors ['red', 'green', 'blue'] would have the same effect as manually typing 'red green blue' at the end of each command. do note that you can also put custom color names here.

## custom colors
default value: `cols = []`

any custom colors can be placed here. cols should be a list of lists in the format ['name/alias', 'color'] where 'color' is of any format specified [here](index.html/#value-types).

for example:
```
cols = [
    ['color1', 'fc0099'],
    ['color2', 'ffcc00']
]
```
