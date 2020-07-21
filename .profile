# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"


#THIS IS SUPER IMPORTANT. IF NOT SET .profile will not load on login and it all crashes... Like your dreams!
export TERM="xterm"


# This block is conda stuff...
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/captainbroccoli/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/captainbroccoli/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/home/captainbroccoli/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/captainbroccoli/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


#Setting variables
#Default programs:

export EDITOR="vim"
export BROWSER="brave"
export READER="zathura"

# Add ~/bin to the PATH
export PATH="$PATH:~/bin"

# Add tetr HOME_TETR variable
export HOME_TETR="$HOME/software/tetr_6.04"

# Add pycahrm HOME_PYCHARM variable
export HOME_PYCHARM="$HOME/software/pycharm-2019.3.4/bin"

#Add fortivpn variable
export HOME_FORTI="$HOME/software/forticlientsslvpn/64bit"

#Add Balena-CLI variable
export HOME_BALENA_CLI="$HOME/software/balena-cli-v12.1.2-linux-x64-standalone/balena-cli"

#Add snap variable
#export HOME_SNAP=/home/snap/bin
#export PATH=$PATH:/snap/bin

#Adding win32 to wine variable so it can run 32 bit programs... (not sure if it works or not)
export WINEARCH=win32

#Adding a bibliography variable
export BIB="$HOME/dox/bibliography/bibliography.bib"

#Prompt customization

conda activate #this is so the base enviroment of conda apears.
export PS1="($CONDA_DEFAULT_ENV) \[\033[38;5;11m\][\[$(tput sgr0)\]\[$(tput bold)\]\u\[$(tput sgr0)\]\[\033[38;5;244m\]@\[$(tput sgr0)\]\[\033[38;5;10m\]\h\[$(tput sgr0)\]\[\033[38;5;11m\]]\[$(tput sgr0)\]:\w \[$(tput sgr0)\]\[\033[38;5;221m\]\\$\[$(tput sgr0)\] \[$(tput sgr0)\]"



