# commands

here is the full list of commands as seen when running hbmp with no commands or arguments.

```
usage: hbmp [command] ([subcommand] [parameters] ([options]))

list of commands, parameters and options:
command:
-a, --arg.      [parameter]                 ([option])              description

habit:
-a, --add       [name]                                              add a new habit (if not already existing).
-r, --remove    [habit]                                             remove a habit.
-t, --track     [day]                       ([habit] [number])      add or edit a record.
-l, --list                                                          list all habits.
-m, --move      [habit] [habit2]                                    moves one habit after another habit.
-s, --steps     [habit] [stepno]                                    set the default number of steps in heatmap (number from 1-4)

map:
-d, --day       [start] [end]               ([colors])              view heatmap for all habits from one day to another.
-m, --month     [start] [end]               ([colors])              view heatmap for all habits from the start of a month to the beginning of another.
-y, --year      [year] [habit]              ([colors])              view yearly calendar heatmap for a habit.
-b, --bydur     [start] [end] [duration]    ([colors])              view heatmap based on average of week/month/year.

help:                                                               see all commands and explanations.

samplecolors:                               ([colors])              see all custom colors or the given colors in the terminal.
```

these four commands will be split into three pages.
1. [habit](habit.md)
2. [map](map.md)
3. [misc](misc.md)

## value types
in the parameters and options lists, multiple types of values can be seen.

| value type | parameters/options                         | description |
| ---------- | ------------------                         | ----------- |
| string     | [name] (habit -a)                          | any string. |
| habit      | [habit]/[habit2] (habit -r/t/m/s, map -y)  | name of any existing habit. |
| number     | [number] (habit -t), [stepno] (habit -s)   | any number from 0-4 as long as it is below the habit's stepno. |
| stepno     | [stepno] (habit -s)                        | any number from 1-4. |
| color      | [colors] (map -d/m/y/b, samplecolors)      | any hex code without the preceding '#'[^1], any [4-bit colors](https://en.wikipedia.org/wiki/ANSI_escape_code#3-bit_and_4-bit) or any [custom color names](https://shuu-wasseo.github.io/habitmap-docs/configuration.html#custom-colors). |
| day        | [day] (habit -t), [start]/[end] (map -d/b) | any date in ISO format (YYYY-MM-DD), 'tdy', 'yst' or the first three letters of any day in the week. |
| month      | [start]/[end] (map -m/b)                   | any month in ISO format. (YYYY-MM, date without last two digits / day) |
| year       | [start]/[end] (map -y/b)                   | any year from 1 - 9999 AD. (without the 'AD') |

[^1]: due to the fact that python ignores arguments or options starting with '#', hex codes should be provided without a preceding '#' in the console. for standardisation, hex codes in the config.toml file should also not have a preceding '#'.
