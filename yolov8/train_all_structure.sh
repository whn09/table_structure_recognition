pip install ultralytics
yolo detect train data=data/custom-structure-all.yaml model=yolov8s.pt name=yolov8s-custom-structure-all imgsz=1024 epochs=10 device=0,1,2,3,4,5,6,7 workers=96 batch=768
yolo detect val split=test data=data/custom-structure-all.yaml model=runs/detect/yolov8s-custom-structure-all/weights/best.pt imgsz=1024 device=0 workers=96 batch=512