install:
	chmod +x hbmp
	pip install ansicolors
	pip install toml
	pip install python-dateutil
	mkdir -p /usr/local/bin/hbmp
	cp hbmp /usr/local/bin/hbmp
	
setup:
	hbmp habit -a exercise
	hbmp habit -a meditate
	hbmp habit -a hydrate
	hbmp help
