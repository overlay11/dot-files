PS1='\[\e[33m\]\u@\h\[\e[39m\] $? '
PS1+='\[\e[34m\e[1m\]\W\[\e[39m\e[22m\] \$\[\e[m\a\e]2;\e\\\] '
export PS1

export CLICOLOR=1
export EDITOR=vim
export PAGER=less
export LESS='WRj3iPs?f%f  .%lt-%lb?L/%L.?Pb (%Pb\%).'
export LYNX_CFG=~/.lynx.cfg

export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=1000

no_proxy=localhost,.futures.ru,.freelines.ru,.sknt.ru,.beeline.ru,.tele2.ru
export no_proxy

#export http_proxy=http://localhost:1087
#export http_proxy=http://10.0.2.2:1087
#export https_proxy=$http_proxy

#export SOCKS_SERVER=localhost:1086
#export SOCKS_SERVER=10.0.2.2:1086
#export SOCKS_VERSION=5

#export PATH+=:~/bin
#export DBUS_SESSION_BUS_ADDRESS=disabled:

[ -f ~/.bash_profile.local ] && source ~/.bash_profile.local

source ~/.bashrc
