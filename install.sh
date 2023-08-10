# assume you use python version Python 3.9
pip install aitviewer==1.9.0
pip install torch==1.13.1 torchvision==0.14.1 --extra-index-url https://download.pytorch.org/whl/cu118
pip install fvcore iopath
pip install git+https://github.com/NVlabs/tiny-cuda-nn/@v1.6#subdirectory=bindings/torch
pip install pytorch-lightning==1.5.7
pip install opencv-python # reboot?
pip install imageio
pip install smplx==0.1.28
pip install hydra-core==1.1.2
pip install h5py ninja chumpy numpy==1.23.1
pip install lpips

# also, kaolin should be installed following https://kaolin.readthedocs.io/en/latest/notes/installation.html
git clone --recursive https://github.com/NVIDIAGameWorks/kaolin
cd kaolin
pip install -r tools/build_requirements.txt -r tools/viz_requirements.txt -r tools/requirements.txt
python setup.py develop
cd ..

# install segment-anything
pip install git+https://github.com/facebookresearch/segment-anything.git

# install ROMP
pip install simple_romp==1.1.3

# install pytorch3d
pip install "git+https://github.com/facebookresearch/pytorch3d.git"