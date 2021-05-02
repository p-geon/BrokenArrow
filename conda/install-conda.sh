# download
wget -q https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O miniconda.sh
bash miniconda.sh -b -p ${HOME}/.miniconda
rm miniconda.sh

# PATH
echo PATH="$PATH":${HOME}/.miniconda/bin >> ~/.bashrc
conda info -e

# activate
conda create -n tf python=3.8
conda activate tf

# delete env
conda deactivate
conda remove -n tf --all