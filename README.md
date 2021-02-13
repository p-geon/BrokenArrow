# Dotfiles-v4

- Ubuntu18.04-base

## Initialize

```
sudo apt update
sudo apt -y upgrade
sudo apt install -y vim
sudo hwclock -s #if WSL2
git clone https://github.com/p-geon/Dotfiles-v4
cd Dotfiles-v4
````

## git

```
make setup-git
```

## Docker (WIP)

```
sudo apt install make
make check-env
make install
```

- docker
