pip install ultralytics
yolo detect train data=data/custom-detection.yaml model=yolov8s.pt name=yolov8s-custom-detection imgsz=800 epochs=10 device=0,1,2,3,4,5,6,7 workers=96 batch=1024
yolo detect val split=test data=data/custom-detection.yaml model=runs/detect/yolov8s-custom-detection/weights/best.pt imgsz=800 device=0 workers=96 batch=1024