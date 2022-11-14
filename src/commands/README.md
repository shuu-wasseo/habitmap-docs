# commands
due to habitmap having a cli version and a discord bot version (habitmap-bot), we will separate the two command documentations although both versions support the same purpose. 
this also allows us to make way for documentation of the tty version of habitmap, if or when it is made.

## sections
1. [cli](cli/README.md)
2. [discord bot](dcbot/README.md)

## value types
in the parameters and options lists, multiple types of values can be seen.

| value type | cli parameters/options                       | discord bot parameters/options                                            | description |
| ---------- | ------------------                           | ------------------------------                                            | ----------- |
| string     | [name] (habit -a), [new] (acc -e)            | [type] (/edith) [username]/[password] (/login, /signup, /edita, /dela)    | any string. |
| habit      | [habit]/[habit2] (habit -r/t/m/s, map -y)    | [habit] (/edith, /trackh, /moveh, /steph, /yearm)                         | name of any existing habit. |
| credential | [credential] (acc -e)                        | [credential] (/edita)                                                     | "username" or "password". |
| number     | [number] (habit -t)                          | [number] (/trackh)                                                        | any number from 0-4. |
| stepno     | [stepno] (habit -s)                          | [stepno] (/steph)                                                         | any number from 1-4. |
| color      | [colors] (map -d/m/y/b, samplecolors)        | n/a (colors not supported)                                                | any hex code without the preceding '#'[^1], any [4-bit colors](https://en.wikipedia.org/wiki/ANSI_escape_code#3-bit_and_4-bit) or any [custom color names](https://shuu-wasseo.github.io/habitmap-docs/configuration.html#custom-colors). |
| day        | [day] (habit -t), [start]/[end] (map -d/b)   | [day] (/trackh), [start]/[end] (/durm)                                    | any date in ISO format (YYYY-MM-DD), 'tdy', 'yst' or the first three letters of any day in the week. |
| month      | [start]/[end] (map -b)                       | [start]/[end] (/durm)                                                     | any month in ISO format. (YYYY-MM, date without last two digits / day) |
| year       | [start]/[end] (map -y/b)                     | [start]/[end] (/durm, /yearm)                                             | any year from 1 - 9999 AD. (without the 'AD') |

[^1]: due to the fact that python ignores arguments or options starting with '#', hex codes should be provided without a preceding '#' in the console. for standardisation, hex codes in the config.toml file should also not have a preceding '#'.
