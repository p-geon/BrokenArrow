# raw pip

# tensorflow

# pip uninstall tensorflow-gpu
# conda install tensorflow
## -> tensorboard 
## -> scipy

# CUDA 11.0 cuDNN 8.0
conda install -c anaconda tensorflow-gpu # 2.4
conda install cudatoolkit=11.0
conda install -c nvidia cudnn # 8.0

# CUDA 10.1 cuDNN 7.6.5
pip install tensorflow-gpu==2.3# →古いCPUだとコアダンプする
conda install cudatoolkit=10.1
conda install cudnn=7.6.5=cuda10.1_0

# General Purpose (about 3min)
pip install tqdm==4.54.0
pip install pydot==1.4.2
pip install imgcat==0.5.0
pip install easydict==1.9

pip install jupyter==1.0.0
pip install matplotlib==3.3.3
pip install seaborn==0.11.0
pip install scikit-learn==0.24.1
pip install umap-learn==0.5.1
pip install scikit-image==0.17.2
pip install lycon==0.2.0