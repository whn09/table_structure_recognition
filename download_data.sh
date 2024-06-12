sudo apt update
sudo apt install git-lfs -y
git lfs install
git clone https://huggingface.co/datasets/bsmock/FinTabNet.c
cd FinTabNet.c && bash extract_fintabnet.sh
git clone https://huggingface.co/datasets/bsmock/pubtables-1m
cd pubtables-1m && bash extract_structure_dataset.sh
