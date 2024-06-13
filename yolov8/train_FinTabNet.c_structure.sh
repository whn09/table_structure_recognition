pip install ultralytics
yolo detect train data=data/custom-structure-fintabnet.yaml model=yolov8s.pt name=yolov8s-custom-structure-fintabnet imgsz=1024 epochs=10 device=0 workers=8 batch=32
yolo detect val split=test data=data/custom-structure-fintabnet.yaml model=runs/detect/yolov8s-custom-structure-fintabnet/weights/best.pt imgsz=1024 device=0 workers=8 batch=16