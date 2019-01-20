#!/usr/bin/env bash
# vim: noai:ts=4:sw=4:expandtab
# shellcheck source=/dev/null
# shellcheck disable=2009
#
# Awesome-Config
# Copyright (c) 2019 Oguzhan Ince
# A command-line system config implementation tool - Written in bash 3.2+.
#
# https://github.com/oguzhanlarca/awesome-config
# http://www.wikizeroo.net/index.php?q=aHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvSG9tZV9kaXJlY3Rvcnk


# Default Configuration.
bash_version="${BASH_VERSION/.*}"
sys_locale="${LANG:-C}"
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
PATH="${PATH}:/usr/xpg4/bin:/usr/sbin:/sbin:/usr/etc:/usr/libexec"
reset='\e[0m'
shopt -s nocasematch
LC_ALL=C
LANG=C
export GIO_EXTRA_MODULES="/usr/lib/x86_64-linux-gnu/gio/modules/"

SCRIPT_NAME="awesome-config.sh"
ARGS="run"
NEW_FILE="https://raw.githubusercontent.com/oguzhanlarca/awesome-config/master/awesome-config.sh"

version="1.2.3.44" # Awesome-Config Version

# check if there is a new version of this file
# here, hypothetically we check if a file exists in the disk.
# it could be an apt/yum check or whatever...
check_upgrade () {
[ -f "$NEW_FILE" ] && {

# install a new version of this file or package
# again, in this example, this is done by just copying the new file
echo "Found a new version, updating ..."
cp "$NEW_FILE" "$SCRIPT_NAME"
# rm -f "$NEW_FILE"

# note that at this point this file was overwritten in the disk
# now run this very own file, in its new version!
echo "Running the new version..."
$SCRIPT_NAME $ARGS

# now exit this old instance
exit $?
}

echo 'Latest version...'
}

main () {
echo 'Awesome-Config version: ' $version
check_upgrade

### CASE ###
case $1 in
run)
echo ' '
echo 'OPTION: INSTALLING...'
echo ' '

# Default Signature.
echo '-------------------------------------------------'
echo 'Welcome to Awesome-Config Script! [CROSSPLATFORM]'
echo '-------------------------------------------------'

echo "
.---.-.--.--.--.-----.-----.-----.--------.-----.
|  _  |  |  |  |  -__|__ --|  _  |        |  -__|
|___._|________|_____|_____|_____|__|__|__|_____|

___ __                          __   __
.----.-----.-----.'  _|__|.-----.--.--.----.---.-.|  |_|__|.-----.-----.
|  __|  _  |     |   _|  ||  _  |  |  |   _|  _  ||   _|  ||  _  |     |
|____|_____|__|__|__| |__||___  |_____|__| |___._||____|__||_____|__|__|
|_____|
"

./unix

### KNOWLEDGE ###

# Operating system                        Path                                   Environment variable
# ----------------                        ----                                   --------------------
# Microsoft Windows Vista, 7, 8 and 10    <root>\Users\<username>                %USERPROFILE% %HOMEDRIVE% %%HOMEPATH%
# Unix-based [1]                          <root>/home/<username>                 $HOME
# Unix-derived                            /var/users/<username>                  $HOME
# Unix-derived                            /u01/<username>                        $HOME
# Unix-derived                            /usr/<username>                        $HOME
# Unix-derived                            /user/<username>                       $HOME
# Unix-derived                            /users/<username>                      $HOME
# macOS                                   /Users/<username>                      $HOME
# SunOS / Solaris                         /export/home/<username>                $HOME
# Linux / BSD (FHS)                       /home/<username>                       $HOME
# AT&T Unix (original version)            <root>/usr/<username>                  $HOME
# Android                                 /data/media/<userid>                   $HOME


### DEFAULTS ###
[ -z '$dotfilesrepo' ] && dotfilesrepo='https://github.com/oguzhanlarca/awesome-config.git'
# [ -z '$dotfilesfresh' ] && dotfilesfresh='https://github.com/oguzhanlarca/fresh-config.git'

# dir=$HOME
# userdir=$HOME
# userdir=%USERPROFILE%
# userdir=%HOMEDRIVE%
# userdir=%HOMEPATH%

### FUNCTIONS ###
welcomemsg() { \
echo ' '
echo "'-------------------------------------------------------------------------------'"
echo "'This script will automatically install Unix/Linux-based fully-featured desktop.'"
echo "'-------------------------------------------------------------------------------'"
echo ' '
}

getuserandpass() { \
echo 'Firstly, please enter the username for $HOME directory.'
read -p 'Username: ' name || exit

while ! echo '$name' | grep '^[a-z_][a-z0-9_-]*$' >/dev/null 2>&1; do
echo 'Username not match.'
done
read -sp 'Password: ' pass1
read -sp 'Retype password: ' pass2
while ! [ '$pass1' = '$pass2' ]; do
unset pass2
read -sp 'Passwords not match.\Enter password again: ' pass1
read -sp '\Retype password: ' pass2
done ;}

preinstallmsg() { \
echo 'Get started!'
echo 'The rest of the installation will now be totally automated.\\It will take some time.\\The system will begin installation!'
}

putgitrepo() {
echo 'Downloading & Installing awesome-config files...'
echo 'Creating A symbolic links (also known as a soft link or symlink)...'
echo 'Clonning from [ https://github.com/oguzhanlarca ] to your $HOME path.'

dir=$(mktemp -d)
chown -R "$name":wheel "$dir"
sudo -u "$name" git clone --depth 1 "$1" "$dir/gitrepo" >/dev/null 2>&1 &&
sudo -u "$name" mkdir -p "$2" &&
sudo -u "$name" cp -rfT "$dir"/gitrepo "$2"
}

finalize(){
echo 'Provided there were no hidden errors, the script completed successfully and all the programs and configuration files should be in place.'
echo 'To run the new graphical environment, log out and log back in as your user, start the graphical environment.'
echo '[ Awesome-Config ]' || echo $version
}

### THE ACTUAL SCRIPT ###
# echo ' '
# echo 'Be sure before installing Awesome-Config'
# echo '----------------------------------------'
# echo 'Are you sure you are running this as the root user?'
# echo 'Are you sure you are using an Unix/Linux-based distro?'
# echo 'Are you sure you have an internet connection?'
# echo 'If you are using Arch-based distro: Is your Arch keyring updated?'
# echo ' '

### Last check
welcomemsg || error 'User exited.'
getuserandpass || error 'User exited.'
preinstallmsg || error 'User exited.'
echo '[ OK ]' || echo 'Awesome-Config Installing...'

### Installation
putgitrepo $dotfilesrepo $HOME || error 'dotfilesrepo failed to deploy'
# putgitrepo $dotfilesfresh $HOME/.fresh-config || error  'dotfilesfresh failed to deploy'

### Complete
finalize
clear
;;

### Update
update)
echo ' '

check_upgrade
echo -e '\033[1;37mYou are using latest Awesome-Config Version:' $version

echo 'First state in this script: If there is new vers. then install it!.'
echo 'This is a hard installation.' 'Do you want to continue? (yes/no): '
read userread
if [userread==yes]
then
echo -e '\033[1;33mOPTION:' '\033[0;37mUPDATEING...'
else
echo -e '\033[1;31mExiting the application.'
fi
;;

# increment_version case
increment-version)
echo ' '
# increment_version function definition
echo $version | awk -F. -v OFS=. 'NF==1{print ++$NF}; NF>1{if(length($NF+1)>length($NF))$(NF-1)++; $NF=sprintf("%0*d", length($NF), ($NF+1)%(10^length($NF))); print}'
echo -e '\033[0;33mOld Value of Version:' '\033[0;37m'$version
version=$(increment_version $version)
echo -e '\033[1;33mNew Value of Version:' '\033[1;37m'$version
echo -e '\033[1;31mExiting the application.'
echo ' '
;;

# Any other entering:
*)
echo ' '
echo -e '\033[1;33mOPTIONS:' '\033[0;37m<run> <update> <increment-version> <man>'
echo -e '\033[1;37mYou are not using any option.' '\033[1;31mExiting the application.'
echo ' '
;;
esac
}
