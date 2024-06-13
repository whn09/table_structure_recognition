# sudo apt update
# sudo apt install git-lfs -y
git lfs install
git clone https://huggingface.co/datasets/bsmock/FinTabNet.c
cd FinTabNet.c && bash extract_fintabnet.sh
git clone https://huggingface.co/datasets/bsmock/pubtables-1m
cd pubtables-1m && bash extract_structure_dataset.sh
git clone https://huggingface.co/datasets/bsmock/ICDAR-2013-Table-Competition-Corrected
cd ICDAR-2013-Table-Competition-Corrected && tar xvf ICDAR-2013-Table-Competition-Corrected.tar.gz
pip install editdistance
python process_icdar2013.py --data_dir ICDAR-2013-Table-Competition-Corrected/ICDAR-2013-Table-Competition-Corrected --output_dir ICDAR-2013.c