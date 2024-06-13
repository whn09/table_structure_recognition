# python train.py --workers 8 --device 0 --batch-size 64 --data data/custom-detection.yaml --img 640 --weights yolov5s.pt --name yolov5s-custom-detection --epochs 10

# python val.py --workers 8 --device 0 --batch-size 128 --data data/custom-detection.yaml --img 640 --task test --weights runs/train/yolov5s-custom-detection/weights/best.pt --name yolov5s-custom-detection

python train.py --workers 8 --device 0 --batch-size 64 --data data/custom-detection.yaml --img 800 --weights yolov5s.pt --name yolov5s-custom-detection-800 --epochs 10

python val.py --workers 8 --device 0 --batch-size 128 --data data/custom-detection.yaml --img 800 --task test --weights runs/train/yolov5s-custom-detection-800/weights/best.pt --name yolov5s-custom-detection-800
