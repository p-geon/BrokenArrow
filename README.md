# BrokenArrow

stabilized-ML envoronment creation

> Dotfiles-v4 + bash_syncer + deeplearning-base

- `Makefile`
- `/bin/sh`
- `ansible`
- `Docker`


## install 

```
mkdir git && cd git
git clone https://github.com/p-geon/BrokenArrow.git && cd BrokenArrow

# copy dotfiles
make initialize

## about 3min (in 4core AWS-p2inst.)
./setup.sh

## about 1-2min (in 4core AWS-p2inst.)
make install-base
# 
make install-docker
make install-nvidia-driver
# ↑ needs reboot
```

## environments

- onpre: `TODO`
- on AWS: `Ubuntu Server 20.04 LTS (HVM), SSD Volume Type`
- any cluster: `TODO`


## TODO

- tmux
  - [ ] tmux-plugin
  - [ ] blocking in tmux for imgcat
- [ ] miniconda
- [ ] direnv 
- [ ] zsh