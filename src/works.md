# how it works
a brief introduction to how habitmap works. if this is your first time using habitmap, please read this before moving on to any other sections.

## steps
what are steps?

steps are the number of different values that any record can have. 
if a habit only has the option to be marked as done or not done, we count that as one step.
if a habit has two steps, one would be allowed to mark the habit as done, undone or half-done. 
similar rules apply for three or four steps.

here is an example for a habit with 4 steps.

| x in step x of 4     | desc |
| ----------------     | ---- |
| 0                    | the habit has not been done at all. |
| 1                    | the user is one step closer to their goal (for the day). |
| 2                    | the user is halfway towards their goal. |
| 3                    | the user is one step away from their goal. |
| 4                    | the user's goal for the day is reached. |

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

[^1]: while 1/3 and 2/3 are both closer to 2/4 (1/2) than 1/4 and 3/4 respectively, making them both 2/4 would mean they would be indistinguishable in maps. giving these two values different values when the stepno is changed to 4 maintains a clear difference between 1/3 and 2/3.

## heatmaps
what are heatmaps?

heatmaps are a form of data presentation. according to oxford languages, heatmaps are:
> a representation of data in the form of a map or diagram in which data values are represented as colours.

while there are many types of heatmaps, habitmap only uses the following three.

| heatmap | x-axis / column | y-axis / row | command (hbmp map) | description |
|:-------:|:---------------:|:------------:|:------------------:|:-----------:|
| daily   | day             | habit        | -d / --day         | allows you to see your progress in committing to each habit across multiple days.
| average per duration | duration (week/month/year) | habit | -b / --bydur | similar to the daily heatmap, but you can view your average across a few weeks or months to more easily visualise long-term progress.
| yearly calendar | week    | day of the week | -y / --year     | similar to the github contributions heatmap at the bottom of the user profile, but only allows **one** habit and across **one** year.

for more details on how to use these, see [map](commands/map.md).
