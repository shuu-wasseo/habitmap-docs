# misc
this page will explain all other commands.

to refer to the definition/description of any value type, see [commands](https://shuu-wasseo.github.io/habitmap-docs/commands/index.html).

## help
usage: `hbmp help`

this command prints out a comprehensive guide (although not as comprehensive as this site) on each command and how to use it.

## samplecolors
usage: `hbmp samplecolors ([colors])`

this command prints out colored text with either all colors in the config file or the given colors to allow the user to see if the colors work or fit well with their terminal.

if left blank, this command defaults to all colors listed in the config file.
```
$ cat config.toml
stepno = 4
defcol = "ffffff"
cols = [
    ["heejin", "fc0099"],
    ["hyunjin", "ffcc00"],
    ["haseul", "00ff7b"],
    ["yeojin", "ff6e14"],
    ["vivi", "ff98b4"]
]

$ hbmp samplecolors
```
the output of samplecolors will be multiple lines, each having "██ [name] ([hex code if not 4-bit])" in the color assigned to [name]. in this case:
![(sample) output of "hbmp samplecolors". due to site limitations, we will only be able to display the output through an image.](samplecolors.jpg)

if not left blank, this command will taken an unlimited amount of colors.
```
$ hbmp samplecolors red green blue
```
this time, the output will be in a similar format as before.

![another (sample) output of "hbmp samplecolors". due to site limitations, we will only be able to display the output through an image.](samplecolors2.jpg)
