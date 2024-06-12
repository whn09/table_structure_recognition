# python train.py --workers 8 --device 0 --batch-size 64 --data data/custom-structure.yaml --img 1000 --weights yolov5s.pt --name yolov5s-custom-structure --epochs 10
# # python train.py --workers 8 --device 0 --batch-size 2 --data data/custom-structure.yaml --img 1280 --weights yolov5x6.pt --name yolov5x6-custom --epochs 10

# python val.py --workers 8 --device 0 --batch-size 128 --data data/custom-structure.yaml --img 1000 --task test --weights runs/train/yolov5s-custom-structure/weights/best.pt --name yolov5s-custom-structure

# pip install ultralytics
yolo detect train data=data/custom-structure.yaml model=yolov8s.pt name=yolov8s-custom-structure imgsz=1024 epochs=10 device=0,1,2,3,4,5,6,7 workers=96 batch=1024
# yolo detect val split=test data=data/custom-structure.yaml model=runs/detect/yolov8s-custom-structure/weights/best.pt imgsz=1024 device=0 workers=96 batch=1024