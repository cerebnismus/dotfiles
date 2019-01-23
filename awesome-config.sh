#!/usr/bin/env bash
# vim: noai:ts=4:sw=4:expandtab
# shellcheck source=/dev/null
# shellcheck disable=2009
#
# Awesome-Config
# Copyright (c) 2019 Oguzhan Ince
# A command-line system config implementation tool - Written in bash 3.2+.
#
# ▒█▀▄▀█ ▀█▀ ▀▀█▀▀
# ▒█▒█▒█ ▒█░ ░▒█░░
# ▒█░░▒█ ▄█▄ ░▒█░░
#
# https://github.com/oguzhanlarca/awesome-config
# http://www.wikizeroo.net/index.php?q=aHR0cHM6Ly9lbi53aWtpcGVkaWEub3JnL3dpa2kvSG9tZV9kaXJlY3Rvcnk

bash_version="${BASH_VERSION/.*}"
sys_locale="${LANG:-C}"
XDG_CONFIG_HOME="${XDG_CONFIG_HOME:-${HOME}/.config}"
PATH="${PATH}:/usr/xpg4/bin:/usr/sbin:/sbin:/usr/etc:/usr/libexec"
reset='\e[0m'
shopt -s nocasematch
LC_ALL=C
LANG=C
export GIO_EXTRA_MODULES="/usr/lib/x86_64-linux-gnu/gio/modules/"

### DEFAULTS ###
[ -z '$dotfilesrepo' ] && dotfilesrepo='https://github.com/oguzhanlarca/awesome-config.git'
# [ -z '$dotfilesfresh' ] && dotfilesfresh='https://github.com/oguzhanlarca/fresh-config.git'
SCRIPT="awesome-config.sh"
RUNSCRIPT="sudo ./awesome-config.sh"
ARGS="run" #<run> <update> <increment-version> <*>
CHECK="https://raw.githubusercontent.com/oguzhanlarca/awesome-config/master/awesome-config.sh"
GIT="https://github.com/oguzhanlarca/awesome-config.git"
version="1.0.4.9" # Awesome-Config Version

### CASE ###
case $1 in
run)
echo ' '
echo '------------------------------------------------------'
echo '|  Welcome to [Awesome-Config] Script ver:' $version ' |'
echo '------------------------------------------------------'
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
curl -LO https://raw.githubusercontent.com/oguzhanlarca/awesome-config/master/unix
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

# dir=$HOME
# userdir=$HOME
# userdir=%USERPROFILE%
# userdir=%HOMEDRIVE%
# userdir=%HOMEPATH%

### FUNCTIONS ###
welcomemsg() { \
echo '------------------------------------------------------------------------------------'
echo '|  This script will automatically install Unix/Linux-based fully-featured desktop  |'
echo '------------------------------------------------------------------------------------'
echo ' '
}

# GET CREDENTIALS
getuserandpass() { \
name=$(whoami)
read -p 'Username: ' tmpuser
while ! [ $name = $tmpuser ]; do
unset name
read -p 'Username incorrect. Retype Username: ' name
done
#read -sp 'Password: ' pass1
#echo ' '
#read -sp 'Retype password: ' pass2
#echo ' '
#while ! [ $pass1 = $pass2 ]; do
#unset pass2
#echo 'Passwords not match.'
#read -sp 'Enter password again: ' pass1
#echo ' '
#read -sp 'Retype password: ' pass2
#echo ' '
#done
}

putgitrepo() {
echo -e '\033[1;37mDownloading & Installing awesome-config files...'
sleep 2 # Waits 1 second.
echo -e '\033[0;37mClonning from [ \033[1;34mhttps://github.com/oguzhanlarca \033[0;37m] to your \033[1;33m$HOME \033[0;37mpath.'
sleep 1 # Waits 0.5 second.
echo -e '\033[0;37mCreating A symbolic links (also known as a soft link or symlink)...'
sleep 1 # Waits 0.5 second.
gitrepo="gitrepo"
cd $HOME
mkdir -p "$gitrepo"
cd gitrepo
echo -e ' '
echo -e '\033[1;37mPlease type your sudo passwd to authorized gitrepo.\033[0;37m'
sudo chown -R "$name":wheel "$HOME/gitrepo"
sudo -u "$name" git clone "$GIT" # >/dev/null 2>&1
# git clone https://github.com/oguzhanlarca/awesome-config.git
}

finalize(){
echo -e '\033[1;37m[\033[0;34mFinalize\033[1;37m]' '[ \033[0;31mAwesome-Config \033[1;31m'$version '\033[1;37m]' '\033[1;37m[\033[1;32mOK\033[1;37m]' '\033[1;37m[\033[1;37mDone!\033[1;37m]'
sleep 2 # Waits 0.5 second.
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
echo -e '\033[1;33mWARNING' '\033[1;37mAwesome-Config Installing...'

### Installation
putgitrepo $dotfilesrepo $HOME
# putgitrepo $dotfilesfresh $HOME/.fresh-config || error  'dotfilesfresh failed to deploy'

### Complete
finalize
echo ' '
;;

### UPDATE
update)

echo ' '
# check if there is a new version of this file
# here, hypothetically we check if a file exists in the disk.
# it could be an apt/yum check or whatever...
check_upgrade () {
[ "$CHECK" ] && {
# install a new version of this file or package
# again, in this example, this is done by just copying the new file
echo '\033[0;37mFound a new version, updating ...'
curl $CHECK > $SCRIPT
}
echo '\033[1;37mUpdate process completed'
}

# note that at this point this file was overwritten in the disk
# now run this very own file, in its new version!
echo -e '\033[1;34mOverwrite!\033[1;37'
read -p 'Do you want to continue? (yes/no): ' tmpread
if [ tmpread = yes ]
then
echo -e '\033[1;33mOPTION:' '\033[0;37mUPDATE'
check_upgrade
echo -e '\033[1;37mYou are using latest Awesome-Config Version:' $version
echo -e '\033[1;31mExiting the old version and re-run the script\033[1;37m.'
exit $? # now exit this old instance
else
echo -e '\033[1;31mRestarting the script\033[1;37m.'
$RUNSCRIPT $ARGS
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
