# installation
welcome to the installation instructions page!

## requirements
- python 3 (3.10 and up)
- any working command line / terminal

## installation
firstly, clone this repository.
```
$ git clone https://github.com/shuu-wasseo/habitmap
```
secondly, add the habitmap directory into your PATH. 
thirdly, make the hbmp file executable with the following code.
```
$ cd habitmap
$ chmod +x hbmp
```
lastly, enter the following in your browser to install all relevant and necessary packages.
```
$ make install
```
if this is your first time using habitmap and you would like to start with a few sample habits, enter:
```
$ make setup
```
if it runs correctly, it should add the habits 'exercise', 'hydrate' and 'meditate' before printing out the help message.

now, you are able to use habitmap! enter "hbmp" in your terminal to begin!
