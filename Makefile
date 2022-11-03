install:
	chmod +x hbmp
	pip install ansicolors
	pip install toml
	pip install python-dateutil
	rm -rf /usr/local/bin/hbmp
	mkdir -p /usr/local/bin/
	cp hbmp /usr/local/bin/
	
setup:
	hbmp habit -a exercise
	hbmp habit -a meditate
	hbmp habit -a hydrate
	hbmp help
