# --------------------
# bash
# --------------------
alias ba="cd ~/git/BrokenArrow/"
alias B="cd ~/git/BrokenArrow/"
alias A="cat ~/.bash_aliases"
alias S="A | grep"

# --------------------
# exa
# --------------------
alias lllll="ls"
alias ls="exa --group-directories-first --color=auto --icons"
alias l="ls"
alias sl="ls"
alias ll="ls -l"
alias la="ls -la"
alias lt="ls -T"
alias T="exa -T --color=auto --icons"
alias n="ls -l | wc -n"
alias pw="pwd"

alias Td="tree -d -L 2 ./"
alias T1d="tree -d -L 1 ./"
alias T2d="tree -d -L 2 ./"
alias T3d="tree -d -L 3 ./"
alias T1="tree -L 1 ./"
alias T2="tree -L 2 ./"
alias T3="tree -L 3 ./"
alias TT="tree -d -L 2 ~/"
alias TTT="tree -d -L 3 ~/"

# --------------------
# cd variant
# --------------------
alias ~="cd ~/"
alias .="ls"
alias ..="cd ../"
# alias ../="cd ../" # invalid
alias ...="cd ../../"
alias ....="cd ../../../"
alias .....="cd ../../../../"
alias .1="cd ../"
alias .2="cd ../../"
alias .3="cd ../../../"
alias .4="cd ../../../../"
alias .5="cd ../../../../../"
alias b="cd -"

# --------------------
# git
# --------------------
alias g="git"
## add
alias gadry="git add -A --dry-run" #pre-check without adding
alias ga="git add"
alias gaa="git add -A" #all
alias gau="git add -u" #exclude untrack files
alias gap="git add -p" #patch
alias unadd="git reset --mixed HEAD" # revert add

## commit
alias gc="git commit -m"
alias gam="git commit --amend"
alias uncommit="git reset --soft HEAD^" # revert commit

## pull/push
alias gpl="git pull origin main"
alias gp="git push"
alias main="git push origin main"
alias master="git push origin master"
alias gacp="git add -A && git commit -m 'update' && git push origin main"

## branch
alias gb="git branch"
alias gout="git checkout"
alias merge="git merge --squash"
alias gmastermain="git branch -m master main"
alias gdeloriginbranch="git push --delete origin" # + branchname

# show & logging
alias gl="git log --oneline"
alias gg="git log --graph --all --format='%x09%an%x09%h %d %s'"
alias ggg="git log --graph --date=short --decorate=short --pretty=format:'%Cgreen%h %Creset%cd %Cblue%cn %Cred%d %Creset%s'"
alias gs="git status"
alias gss="git status -s"
alias gshow="git log --name-status HEAD^..HEAD" # show last commit status & files

## config
alias gcl="git config --list"

## stash
alias gswap="git stash -u && git checkout -b swap && git stash pop"

# --------------------
# Docker
# --------------------
# Docker
alias d="docker"
alias di="docker images"
alias dp="docker ps -a"

alias drmi="docker images -f dangling=true -q | xargs docker rmi -f"
alias dstop="docker ps -a -q | xargs docker rm -f"
alias dclean="dstop && drmi"

# --------------------
# the others
# --------------------
# make support
alias h="make help"
alias mh="make help"
alias b="make b"
alias mb="make b"


# watch
alias wn="watch -n 2.0 nvidia-smi"


## Python
alias ps-python="ps aux | grep python"
alias ci="conda info -e"
alias ip="ipython"
alias denva="direnv allow ."
alias sat="source activate tf"


# specific
alias dud="du -d 2 -m"
alias heavy-search="du -ah ./ | sort -rh | head -5"


# OS-utils
alias show-architecture="uname -moi"
alias show-os="cat /etc/os-release"


# basic-commands
alias a="alias"
alias q="exit"
alias c="clear"
alias reload="exec bash -l"
alias G="grep"
alias p="pwd"
alias sd360="sudo shutdown -h +360"

# pytorch/GPU
alias gpucheck_pytorch="python -c 'import torch;print(torch.cuda.is_available(), torch.cuda.device_count());'"
alias gpucheck_tensorflow="python -c 'import tensorflow as tf;tf.test.is_gpu_available()'"
