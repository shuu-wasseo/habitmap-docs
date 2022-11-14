# acc
this page will explain the "acc" command.

to refer to the definition/description of any value type, see [commands](https://shuu-wasseo.github.io/habitmap-docs/commands/index.html).
any input fields will be marked with `<text to input>`.

## acc

usage: `hbmp acc`

without any parameters, "acc" prints out the login status (and username if applicable) of the user.

if not logged in:
```
$ hbmp acc
you are not logged in.
```

if logged in:
```
$ hbmp acc
you are logged in as (username).
```

discord equivalent:

`/checkacc`

## -i, --login

usage: `hbmp acc -i`

log in to or sign up for habitmap.

```romance
$ hbmp acc -i
logging in...
```
habitmap will first ask you for your credentials.
```
enter username: <username>
enter password: <password, hidden>
```
if you are creating a new account:
```
this username is not registered. would you like to create a new account? (Y/n) <"y"/"n">
creating account...
```
if you are logging in to an existing account:
```
login successful!
```
you may or may not then be prompted to keep local data or data saved online. 

in the case of having different data locally and online, you will most likely be asked whether you would like to keep your cloud data or your local data.
```
you have data on the cloud and saved locally. please pick one data file to keep. (cloud/local) <"cloud"/"local">
```
after the data finishes syncing, this message will be displayed.
```
data synced successfully.
```

discord equivalent:

`/login` or `/signup`

## -o, --logout

usage: `hbmp acc -o`

log out from habitmap.

```
$ hbmp acc -o
are you sure you would like to log out? (y/N) <"y"/"n">
logging out...
```

discord equivalent:

`/logout`

## -e, --edit 

usage: `hbmp acc -e [credential] [new]`

edit habitmap account credentials.

for example, if i want to change my password to "password123!":
```
$ hbmp acc -e password password123!
are you sure you would like to change your password? (y/N) <"y"/"n">      
enter your current password to verify: <current credential to be changed, hidden>
password verified.
your password has been changed.
```

| value  | type |
| -----  | ---- |
| credential | credential |
| new    | string |

discord equivalent:

`/edita`

## -d, --delete

usage: `hbmp acc -d`

delete habitmap account.

```
$ hbmp acc -d
are you sure you would like to remove your account? (y/N) <"y"/"n">
account successfully deleted.
logging out...
```

discord equivalent:

`dela`
