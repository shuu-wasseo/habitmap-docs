# habit
this page will explain habit-related commands.

to refer to the definition/description of any value type, see [commands](https://shuu-wasseo.github.io/habitmap-docs/commands/index.html).

## edith
usage: `/edith <add/remove> [habit]`

adds or removes a habit based on name, then runs `/listh`.

for example, adding a habit to an empty list:
```
habit '<habit>' added.

you have the following habits:
- <habit>
```
| value | type |
| ----- | ---- |
| habit | habit / string |

cli equivalent:

`hbmp habit -a / --add` for `/edith add`

`hbmp habit -r / --remove` for `/edith remove`

## trackh
usage: `/trackh [day] [number(s)] [habit])`

if habit is not left blank, this command adds or edits the record of habit [habit] on [day] and changes it to [number].

for example, changing the value of 4-step habit1 on 1969-06-09 with `/trackh tdy 4 habit1`:
```
value of habit habit1 on 1969-06-09 changed to 4 of 4.
```

if habit is left blank, this command edits all habits in the order seen in `/listh`, with values separated by a space.

for example, changing the value of habit1, habit2 and habit3 (all 4-step) on 1969-06-09 with `/trackh tdy 4 4 4`:
```
value of habit habit1 on 1969-06-09 changed to 4 of 4.

value of habit habit2 on 1969-06-09 changed to 4 of 4.

value of habit habit3 on 1969-06-09 changed to 4 of 4.
```

| value  | type |
| -----  | ---- |
| day    | day  |
| number | number from 0 to [habit]'s stepno. | 
| habit  | habit |

cli equivalent: 

`hbmp habit -l`

## listh
usage: `/listh`

lists all habits.

```
you have the following habits:
- <habit1>
- <habit2>
...
```

do note that this command is called automatically after any change to the list of habits in `/edith`.

cli equivalent: 
`hbmp habit -l`

## moveh
usage: `/moveh [habit] ([habit2])`

moves [habit1] from its origial position to right after [habit2] or to tbe front if [habit2] is left blank, then runs `/listh`.

for example, take this `/listh` output...
```
you have the following habits:
- habit1
- habit2
```
and then run `/moveh habit1 habit2`.
```
you have the following habits:
- habit2
- habit1
```

| value           | type |
| -----           | ---- |
| habit1, habit2  | habit |

cli equivalent: 

`hbmp habit -m`

## steph

usage: `/steph [habit] [stepno]`

sets the default number of steps for [habit] to [stepno].
having one step would mean that you either have or have not done the habit but having more steps allows you to indicate anything in between.

```
stepno for <habit> changed to <stepno>.
```

| value  | type |
| -----  | ---- |
| habit  | habit |
| stepno | stepno |

cli equivalent: 

`hbmp habit -s`
