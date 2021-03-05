# initialize
echo "initialize"
sudo apt-get remove docker docker-engine docker.io containerd runc
sudo apt-get update
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg

echo "add GPG key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg -y --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "install docker"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# use unroot
echo "usermod"
sudo usermod -aG docker `whoami`

# run
echo "run"
sudo docker run --rm hello-world
sudo docker rmi hello-world
echo "need reboot"
#sudo reboot