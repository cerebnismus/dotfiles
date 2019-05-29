## Arch On Macbook
```
yay -S macbook-lighter
```
### Backlighs Auto Adjust [Screen & Keyboard]
```
# start auto adjust daemon
systemctl start macbook-lighter
systemctl enable macbook-lighter
```
```
# start auto adjust interactively, root previlege needed
macbook-lighter-ambient
```
### Backlight Brightness [Screen]
```
sudo vim /sys/class/backlight/acpi_video0/brightness
# max. is 15
```
```
sudo macbook-lighter-screen --max
sudo macbook-lighter-screen --inc 50
sudo macbook-lighter-screen --dec 50
```
### Backlight Brightness [Keyboard]
```
sudo vim /sys/class/leds/smc::kbd_backlight/brightness
# max. is 255
```
```
sudo macbook-lighter-kbd --max
sudo macbook-lighter-kbd --inc 50
sudo macbook-lighter-kbd --dec 50
```


