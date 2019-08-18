```
### Change your own dependencies
`sudo raspi-config`
### Install your favorite editor
`sudo apt install vim`
`vim`
### Disable the Raspberry Pi ‘color test’ by adding the line disable_splash=1 to /boot/config.txt.
`sudo vim /boot/config.txt`
### Disable the Raspberry Pi logo in the corner of the screen by adding logo.nologo
### Disable the various bits of output from the kernel and friends by adding consoleblank=0 loglevel=1 quiet
### to /boot/cmdline.txt.
`sudo vim /boot/cmdline.txt`
# Disable the login prompt by running systemctl disable getty@tty1 as root.
`sudo systemctl disable getty@tty1`
# Install fbi, the framebuffer image viewer
`sudo apt install fbi`
# Create the file with execute and
```
```
sudo touch /etc/systemd/system/splashscreen.service
sudo chmod +x /etc/systemd/system/splashscreen.service
sudo vim /etc/systemd/system/splashscreen.service
```
```
### and with the following content:
[Unit]
Description=Splash screen
DefaultDependencies=no
After=local-fs.target

[Service]
ExecStart=/usr/bin/fbi -d /dev/fb0 --noverbose -a /opt/splash.png
StandardInput=tty
StandardOutput=tty

[Install]
WantedBy=sysinit.target
```
```
# Replace /opt/splash.png with the path to the splash screen image as appropriate.

# -d /dev/fb0 option will tell fbi which framebuffer to display the image on
# --noverbose will suppress the fbi ‘status bar’ at the bottom of the screen
# -a will allow fbi to automatically select the correct zoom level for the image
# If your image is already at the correct resolution for the display, you may omit this option.
# fbi expects access to a tty, so the StandardInput and StandardOutput options will allow for this
# You may also be able to omit these options and instead pass the -T flag to fbi
# specifying the number of the tty you wish to use.
# The DefaultDependencies option will override systemd's 
# default behaviour of launching the service late in the boot process
# and the WantedBy option will cause fbi to be loaded early in the boot process
# though not before the file system (and hence image) are ready, through the After option.

# Enable the service to be run at boot by running
sudo systemctl enable splashscreen
# You may now be able to test the splashscreen by running
sudo systemctl start splashscreen
# Remove black borders
# You may run in to the issue where there appears to be a black border drawn around the splash screen. 
# This is in fact a hardware-level black border around the entire framebuffer, 
# and can be disabled by adding 
sudo vim /boot/config.txt
disable_overscan=1 
# to /boot/config.txt.


# Kali Linux Lightdm Auto Login
cd /etc/lightdm
ls
vim lightdm.conf
autologin-user=root
autologin-user-timeout=0

cd /etc/pam.d
ls
vim lightdm-autologin
auth required pam_succeed_if.so user != root quiet_success
# We need to hash out or comment out that line by editing it to look like this:
#auth required pam_succeed_if.so user != root quiet_success


# Replace Power Supply and/or Cable (Recommended)
# Disable Under-voltage Warning (Not Recommended)
sudo vim /boot/config.txt
# Disable under-voltage warning
avoid_warnings=1 # removes the warning overlay.
# additionally allows turbo when low-voltage is present.
# avoid_warnings=2 
sudo reboot
```