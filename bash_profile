# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
	. ~/.bashrc
fi

# User specific environment and startup programs

PATH=$PATH:/usr/local/bin:$HOME/bin

BASH_ENV=$HOME/.bashrc
USERNAME=""

MANPATH=/usr/bin/man:/usr/share/man:/usr/local/man

export EDITOR=/usr/bin/vim

# do not allow output redirection to overwrite an existing file
set -o noclobber

export USERNAME BASH_ENV PATH

#[EOF]
