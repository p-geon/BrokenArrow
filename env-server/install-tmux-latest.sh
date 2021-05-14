sudo apt update
sudo apt install -y git automake bison build-essential pkg-config libevent-dev libncurses5-dev
cd /usr/local/src/
sudo git clone https://github.com/tmux/tmux
cd ./tmux/
sudo ./autogen.sh
sudo ./configure --prefix=/usr/local
make #???
sudo make install
which tmux  # /usr/local/bin/tmux となっていることを確認
tmux -V     # tmux next-3.1 (記事編集時点)