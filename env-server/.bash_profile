echo "[loading] ~/.bash_profile"

# =========================================
# Default Descriptions
# =========================================
## if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

## set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

## set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi
#endl
# -----------
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi


if [ -f ~/.bash_aliases_local ]; then
    . ~/.bash_aliases_local
fi

# =========================================
# activate BrokenAllow whan loading .bash_profile
# =========================================
bash brokenarrow

# =========================================
## hook command: cd -> cd + ls
cdls ()
{
  \cd "$@" && pwd && tree -L 1 ./
}

# cat as ccat
colorcat ()
{
	\ccat "$@" && echo ""
}

#alias cd="cdls"
#alias cat="colorcat"
# ==========================================
## exclude evil editor "NANO"
export EDITOR=vim
# ==========================================
## override python
alias python="python3"
# ==========================================

echo "[loaded] ~/.bash_profile"
