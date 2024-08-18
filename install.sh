conda create -n hoi_diffusion_cha python=3.8 -y
conda activate hoi_diffusion_cha

pip install -r requirements.txt
pip install git+https://github.com/otaheri/chamfer_distance.git
pip install git+https://github.com/otaheri/MANO.git
pip install git+https://github.com/otaheri/bps_torch.git
pip install git+https://github.com/MPI-IS/mesh.git
pip install "git+https://github.com/facebookresearch/pytorch3d.git"

cd third_party/test
git clone https://github.com/otaheri/GrabNet
mv utils.py grabnet/tools

mv GrabNet/grabnet .
rm -rf GrabNet
mv utils.py grabnet/tools/utils.py
cd ../..