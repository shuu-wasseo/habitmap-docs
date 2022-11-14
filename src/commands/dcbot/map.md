# map

## durm
usage:`/durm [start] [end] [duration]` 

displays one bar per [duration] of each habit's data from [start] to [end] as well as the overall completion of each day's habits.

example with 4-step habit1 and 3-step habit2 on 1969-4-20:
`/trackh tdy 4 2`
```
value of habit habit1 on 1969-4-20 changed to 4 of 4.
value of habit habit2 on 1969-4-20 changed to 2 of 3 (3 in 4-step).
```
then, run `/durm tdy tdy day`.
```
     yy 69
     mm 04
     dd 20
 habit1 ██
 habit2 ▓▓
overall ▓▓
        88
```

if you would like to see the average over a few weeks/months/years, feel free to put 'week', 'month' or 'year' as the [duration] as well.

| value | type |
| ----- | ---- |
| start, end | any day/month/year |
| duration | 'day', week', 'month', or 'year' |

cli equivalent: 

`hbmp map -d` if [duration] is "day"

`hbmp map -b` for any other [duration]

## yearm

usage: `/yearm [year] [habit]`

displays a calendar heatmap of the data in [habit] for [year], optionally in [colors].

example with 4-step habit1, set to value 4 on 1969-04-20:
```
    01        02      03      04        05      06      07        08      09      10        11      12
sun                                                                                                           
mon                                                                                                           
tue                                                                                                           
wed                                 ██                                                                        
thu                                                                                                           
fri                                                                                                           
sat                                                                                                           
```

| value | type |
| ----- | ---- |
| habit | habit |
| year  | year  |

cli equivalent: 

`hbmp map -y`
