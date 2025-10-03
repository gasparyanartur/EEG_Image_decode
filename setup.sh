#!/bin/bash

# Commands to setup a new conda environment and install all the necessary packages
# See the environment.yaml file for "conda env export > environment.yaml" after running this.

set -e

mamba create -n BCI python=3.10.8 mamba -y -c conda-forge
eval "$(conda shell.bash hook)"
conda activate BCI
mamba install numpy matplotlib tqdm scikit-image jupyterlab -y -c conda-forge
pip install \
	clip-retrieval \
	clip \
	pandas \
	matplotlib \
	ftfy \
	regex \
	kornia \
	umap-learn \
	dalle2-pytorch \
	open_clip_torch \
	transformers \
	diffusers \
	accelerate \
	braindecode==0.8.1 \
	torchvision \
	torch \
	info-nce-pytorch==0.1.0 \
	pytorch-msssim \
	reformer_pytorch \
	mne \
	wandb \
	einops \
	lightning
