umask 022

PATH=$HOME/bin:/usr/bin:/bin:/usr/sbin:/sbin:$PATH
export PATH

# common env
export TERM=linux
export USER=$LOGNAME
export EDITOR=vim
export PAGER=less

export ENV="$HOME/.bashrc"
if [ $SHELL != "/bin/sh" ]; then
   BASH_ENV=$ENV
   . $ENV
fi

echo ""
cd $HOME
