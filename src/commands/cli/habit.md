# habit
this page will explain the "habit" command.

to refer to the definition/description of any value type, see [commands](https://shuu-wasseo.github.io/habitmap-docs/commands/index.html).

## -a, --add 

usage: `hbmp habit -a [name]`

adds a new habit with name [name] to the database.
```
$ hbmp habit -a habit1
    habit 'habit1' added.
```
| value | type |
| ----- | ---- |
| name  | string |

discord equivalent:

`/edith`

## -r, --remove

usage: `hbmp habit -r [name]`

removes the habit with name [name] from the database.
```
$ hbmp habit -r habit1
    habit 'habit1' removed.
```
| value | type |
| ----- | ---- |
| name  | habit |

discord equivalent:

`/edith`

## -t, --track 

usage: `hbmp habit -t [day] ([habit] [number])`

adds or edits the record of habit [habit] on [day] and changes it to [number].

example with 4-step habit1 and 3-step habit2 on 1969-06-09:
```
$ hbmp habit -t tdy habit1 4
    value of habit habit1 on 1969-06-09 changed to 4 of 4.

$ hbmp habit -t yst habit2 2
    value of habit habit2 on 1969-06-08 changed to 2 of 3 (3 in 4-step).
```
if [habit] and [stepno] are left blank, you will be prompted to enter a number for every habit that you have.
```
$ hbmp habit -t tdy
    habit1 (4)? 4
    value of habit habit1 on 1969-06-09 changed to 4 of 4.
    habit2 (3)? 3
    value of habit habit2 on 1969-06-09 changed to 2 of 3 (3 in 4-step).
```

| value  | type |
| -----  | ---- |
| day    | day  |
| habit  | habit |
| number | number from 0 to [habit]'s stepno. |

discord equivalent:

`/trackh`

## -l, --list

usage: `hbmp habit -l`

lists all habits.

example with two habits, habit 1 and habit 2:
```
$ hbmp habit -l
    you have the following habits:
    - habit1
    - habit2
```

discord equivalent:

`/listh`

## -m, --move

usage: `hbmp habit -m [habit] [habit2]`

moves [habit1] from its origial position to right after [habit2], then prints out the list of habits (like in habit -l).

```
$ hbmp habit -l
    you have the following habits:
    - habit1
    - habit2

$ hbmp habit -m habit1 habit2
    you have the following habits:
    - habit2
    - habit1
```

| value           | type |
| -----           | ---- |
| habit1, habit2  | habit |

discord equivalent:

`/moveh`

## -s, --steps

usage: `hbmp habit -s [habit] [stepno]`

sets the default number of steps for [habit] to [stepno].
having one step would mean that you either have or have not done the habit but having more steps allows you to indicate anything in between.

```
$ hbmp habit -s habit1 4
    stepno for habit1 changed to 4.
```

| value  | type |
| -----  | ---- |
| habit  | habit |
| stepno | stepno |

discord equivalent:

`/steph`
