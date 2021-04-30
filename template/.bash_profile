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


# =========================================
# activate BrokenAllow whan loading .bash_profile
# =========================================
bash brokenarrow

echo "[loaded] ~/.bash_profile"