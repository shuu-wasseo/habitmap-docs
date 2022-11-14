# cli 

here is the full list of commands for the cli version of habitmap as seen when running hbmp with no commands or arguments.

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

acc:
-i, --login                                                         log in to habitmap.
-o, --logout                                                        log out from habitmap.                          
-e, --edit      [credential] [new]                                  edit habitmap account credentials.
-d, --delete                                                        delete habitmap account.

help:                                                               see all commands and explanations.

samplecolors:                               ([colors])              see all custom colors or the given colors in the terminal.
```

these five commands will be split into four pages.
1. [habit](habit.md)
2. [map](map.md)
3. [acc](acc.md)
4. [misc](misc.md)


