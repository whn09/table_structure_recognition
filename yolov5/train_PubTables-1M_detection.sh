# python train.py --workers 8 --device 0 --batch-size 64 --data data/custom-detection.yaml --img 800 --weights yolov5s.pt --name yolov5s-custom-detection --epochs 10
# # python train.py --workers 8 --device 0 --batch-size 2 --data data/custom-detection.yaml --img 1280 --weights yolov5x6.pt --name yolov5x6-custom-detection --epochs 10

# python val.py --workers 8 --device 0 --batch-size 128 --data data/custom-detection.yaml --img 800 --task test --weights runs/train/yolov5s-custom-detection/weights/best.pt --name yolov5s-custom-detection

# pip install ultralytics
yolo detect train data=data/custom-detection.yaml model=yolov8s.pt name=yolov8s-custom-detection imgsz=800 epochs=10 device=0,1,2,3,4,5,6,7 workers=96 batch=1024
