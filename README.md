# BrokenAllow

stabilized-ML envoronment creation

> Dotfiles-v4 + bash_syncer + deeplearning-base

- `Makefile`
- `/bin/sh`
- `ansible`
- `Docker`


## install 

```
git clone https://github.com/p-geon/BrokenArrow.git
cd BrokenArrow
./setup.py

# 5-10min in 4core AWS-p2inst.
make install-base
# 
make install-docker
make install-nvidia-driver
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