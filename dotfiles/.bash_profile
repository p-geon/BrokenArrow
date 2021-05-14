echo "[loading] ~/.bash_profile"

# path to customized bins
PATH="$PATH":~/git/BrokenArrow/bin/
PATH="$PATH":~/git/BrokenArrow/bin/split/

# if ubuntu with brew
PATH=$PATH:/home/linuxbrew/.linuxbrew/bin # cluster
PATH=$PATH:/home/ubuntu/.linuxbrew/bin # AWS

# =========================================
# bash / zsh
# =========================================
## if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi
## if running zsh
if [ -n "$ZSH_VERSION" ]; then
    # include .zshrc if it exists
    if [ -f "$HOME/.zshrc" ]; then
    . "$HOME/.zshrc"
    fi
fi
# =========================================
# path
# =========================================
## set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

## set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
#endl

# =========================================
# activate BrokenAllow whan loading .bash_profile
# =========================================
bash brokenarrow

# =========================================
## hook command: cd -> cd + ls
cdls ()
{
  \cd "$@" && ls
}


# cat as ccat
colorcat ()
{
	\ccat "$@" && echo ""
}

alias cd="cdls"
alias cat="colorcat"
# ==========================================
## exclude evil editor "NANO"
export EDITOR=vim
# ==========================================
## override python
alias python="python3"
# ==========================================

echo "[loaded] ~/.bash_profile"
