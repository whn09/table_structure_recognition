python train.py --workers 8 --device 0 --batch-size 64 --data data/custom-structure.yaml --img 1000 --weights yolov5s.pt --name yolov5s-custom-structure --epochs 10
# python train.py --workers 8 --device 0 --batch-size 2 --data data/custom-structure.yaml --img 1280 --weights yolov5x6.pt --name yolov5x6-custom --epochs 10

python val.py --workers 8 --device 0 --batch-size 128 --data data/custom-structure.yaml --img 1000 --task test --weights runs/train/yolov5s-custom-structure/weights/best.pt --name yolov5s-custom-structure