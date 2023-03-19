ifeq ($(OS), Windows_NT)
cp := copy
delete := rd /s
exe := bypass.exe
libusb_install := echo "Install LibUsb First."
linux_additional_packages := echo "">nul
clear := cls
else
cp := cp
delete := rm -rf
exe := bypass
libusb_install := apt-get install libusb-1.0-0
linux_additional_packages := sudo apt-get install python3-tk python3-dev
clear := clear
endif

all:
	$(libusb_install)
	pip3 install -r requirements.txt
	python3 -m PyInstaller --onefile --noconsole bypass.py
	$(cp) -r dist/$(exe) .
	$(delete) build dist bypass.spec
	$(clear)
	echo "SUCCESFULLY BYPASS-WIFI CODE COMPILED"
	echo "NOW move 'autorun.inf' and 'bypass/bypass.exe to your USB."

.PHONY: all