!/bin/sh

echo "add GPG key"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg -y --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "install docker"
sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# use non-root
sudo usermod -aG docker `whoami`