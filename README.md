# BrokenArrow

stabilized-ML envoronment creation

> Dotfiles-v4 + bash_syncer + deeplearning-base

- `Makefile`
- `/bin/sh`
- `ansible`
- `Docker`


## install 

```
# 1. clone
mkdir git && cd git
git clone https://github.com/p-geon/BrokenArrow.git && cd BrokenArrow

# 2. copy dotfiles
make initialize

# 3. initialize / about 3min
./setup.sh

# 4. base / about 1-2min
make install-base

# 5. docker / about 4-5min
make install-docker
sudo usermod -aG docker `whoami`

# 6. nvidia-driver / about 5-10min
make install-nvidia-driver
sudo reboot
```

## hidden files

```
vim ~/.kaggle/kaggle.json
vim ~/.ssh/contents
```

## Kaggle API

```
sudo apt install -y python3-pip
pip3 install kaggle --upgrade
```

## TODO 

environments

- onpre: `TODO`
- on AWS: `Ubuntu Server 20.04 LTS (HVM), SSD Volume Type`
- any cluster: `TODO`


tmux

- tmux
  - [ ] tmux-plugin
  - [ ] blocking in tmux for imgcat
- [ ] miniconda
- [ ] direnv 
- [ ] zsh