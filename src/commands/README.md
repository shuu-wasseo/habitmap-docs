# commands

here is the full list of commands as seen when running hbmp with no commands or arguments.

```
usage: hbmp [command] ([argument] [subargs] ([optional args]))

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

## steps
but before we begin, what are steps?

steps are the number of different values that any record can have. 
if a habit only has the option to be marked as done or not done, we count that as one step.
if a habit has two steps, one would be allowed to mark the habit as done, undone or half-done. 
similar rules apply for three or four steps.

| x in step x of y     | desc |
| ----------------     | ---- |
| 0                    | the habit has not been done at all. |
| 1                    | the user is one step closer to his goal for the day. |
| ...                  | ...  |
| y (e.g. 4 if y is 4) | the user's goal for the day is reached. |

the stepno for any habit is the number of steps that habit has. due to the limitations of the characters that can be printed, the max stepno is 4.

here is a quick conversion table:

| (x, y) in step x of y  | same step if habit stepno changed to 4 |
| ---------------------- | -------------------------------------- |
| (0, 1), (0, 2), (0, 3) | (0, 4)                                 |
| (1, 3)[^1]             | (1, 4)                                 |
| (1, 2)                 | (2, 4)                                 |
| (2, 3)[^1]             | (3, 4)                                 | 
| (1, 1), (2, 2), (3, 3) | (4, 4)                                 |

the database stores all values with stepno 4 to avoid complications when the stepno for each habit is changed.
thus, if a habit has the record step 2 of 3 on a certain day, that number will be recorded in the database as 3.

not only does this make conversion convenient, it also allows easier translation from numbers into the five characters used for heatmaps.

| x in step x of 4 | square printed in heatmap (white) |
| :--------------: | :-------------------------------: |
| 0                |                                   |
| 1                | ░░                                |
| 2                | ▒▒                                |
| 3                | ▓▓                                |
| 4                | ██                                |

while these characters do not look like squares on this site, they resemble squares much more in the terminal where habitmap is to be run.

do note that changing the stepno of a habit will not change its data. 
for example, if a habit with stepno 3 has its stepno changed to 2, the data will remain in its original form.

## value types
in the parameters and options lists, multiple types of values can be seen.

| value type | parameters/options                         | description |
| ---------- | ------------------                         | ----------- |
| string     | [name] (habit -a)                          | any string. |
| habit      | [habit]/[habit2] (habit -r/t/m/s, map -y)  | name of any existing habit. |
| number     | [number] (habit -t), [stepno] (habit -s)   | any number from 0-4 as long as it is below the habit's stepno. |
| stepno     | [stepno] (habit -s)                        | any number from 1-4. |
| color      | [colors] (map -d/m/y/b, samplecolors)      | any hex code without the preceding '#'.[^2] |
| day        | [day] (habit -t), [start]/[end] (map -d/b) | any date in ISO format (YYYY-MM-DD), 'tdy', 'yst' or the first three letters of any day in the week. |
| month      | [start]/[end] (map -m/b)                   | any month in ISO format. (YYYY-MM, date without last two digits / day) |
| year       | [start]/[end] (map -y/b)                   | any year from 1 - 9999 AD. (without the 'AD') |
| duration   | [duration] (map -b)                        | 'week', 'month' or 'year'. | 

[^1]: while 1/3 and 2/3 are both closer to 2/4 (1/2) than 1/4 and 3/4 respectively, making them both 2/4 would mean they would be indistinguishable in maps. giving these two values different values when the stepno is changed to 4 maintains a clear difference between 1/3 and 2/3.
[^2]: due to the fact that python ignores arguments or options starting with '#', hex codes should be provided without a preceding '#' in the console. for standardisation, hex codes in the config.toml file should also not have a preceding '#'.
