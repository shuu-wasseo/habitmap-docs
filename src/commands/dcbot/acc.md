# acc
this page will explain account-related commands.

to refer to the definition/description of any value type, see [commands](https://shuu-wasseo.github.io/habitmap-docs/commands/index.html).

## checkacc

usage: `/checkacc`

shows the login status (and username if applicable) of the user.

if not logged in:
```
you are not logged in.
```

if logged in:
```
you are logged in as (username).
```

cli equivalent: 

`hbmp acc`

## login

usage: `/login [username] [password]`

log in to habitmap.

```
logging in as (username)...
login successful!
```

cli equivalent: 

`hbmp acc -i / --login`

| value  | type |
| -----  | ---- |
| username | string |
| password | string |

## signup

usage: `/signup [username] [password]`

sign up for habitmap.

```
creating account...

account creation complete!
```

cli equivalent: 

`hbmp acc -i / --login`

| value  | type |
| -----  | ---- |
| username | string |
| password | string |

## logout

usage: `/logout`

log out from habitmap.

```
logging out...

logout successful!
```

cli equivalent: 

`hbmp acc -o / --logout`

## edita

usage: `/edita [credential] [old] [new]`

edit habitmap account credentials.

```
(credential) verified.

your (credential) is now (new).
```

cli equivalent: 

`hbmp acc -e / --edit`

| value  | type |
| -----  | ---- |
| credential | credential |
| old | string (original credential for verification) |
| new | string (new credential to change to) |

## dela 

usage: `/dela [password]`

delete habitmap account.

```
account successfully deleted.
```

cli equivalent: 

`hbmp acc -d / --delete`

| value  | type |
| -----  | ---- |
| password | string (for verification) |
