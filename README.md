# awesome-config
some linux configuration files

# dmenu
- $ dmenu_run
- $ echo -e "first\nsecond\nthird" | dmenu
- $ dmenu_run -fn "-xos4-terminus-medium-r-*-*-14-*"
- $ dmenu_run -fn 'Droid Sans Mono-9'
- $ rm ~/.dmenu_cache
- $ rm ~/.cache/dmenu_run
- https://github.com/jukil/dmenu-scripts-collection
- https://bbs.archlinux.org/viewtopic.php?id=80145 [dmenu hacking thread]

# resolution
- Possible Resolutions---------> xrandr -q
- Resolution & Dimension-----> xdpyinfo | grep dimensions
- Change Resolution----------> xrandr --output <OUTPUT> --mode 1024x768
- Find Current Display-------> xrandr | grep -e " connected [^(]" | sed -e "s/\([A-Z0-9]\+\) connected.*/\1/" Virtual1
  
# ranger
- Ranger TFileManager
- https://www.youtube.com/watch?v=nlolvAVqn10
  
# cht.sh
- github.com/chubin/cheat.sh
- cht.sh --shell
- cht.sh lua/:learn
- curl cheat.sh/ls
- cht.sh btrfs
- cht.sh tar~list

# w3m
- apt-get install w3m
- yum install w3m
- https://www.tecmint.com/wp-content/uploads/2015/04/w3m-terminal-browser.gif

# snaps 
- auto-update
- https://snapcraft.io/
- https://docs.snapcraft.io/build-snaps/java

# ncmpcpp
- ncmpcpp cheat sheet
- https://pkgbuild.com/~jelle/ncmpcpp/

# mutt
- Mutt 1.10.1
- http://www.mutt.org/
- "All mail clients suck. This one just sucks less." -me, circa 1995
