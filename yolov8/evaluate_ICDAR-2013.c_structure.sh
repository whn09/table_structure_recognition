pip install ultralytics
yolo detect val split=test data=data/custom-structure-icdar2013.yaml model=runs/detect/yolov8s-custom-structure/weights/best.pt imgsz=1024 device=0 workers=8 batch=16
yolo detect val split=test data=data/custom-structure-icdar2013.yaml model=runs/detect/yolov8s-custom-structure-fintabnet/weights/best.pt imgsz=1024 device=0 workers=8 batch=16
yolo detect val split=test data=data/custom-structure-icdar2013.yaml model=runs/detect/yolov8s-custom-structure-all/weights/best.pt imgsz=1024 device=0 workers=8 batch=16
yolo detect val split=test data=data/custom-structure-icdar2013.yaml model=runs/detect/yolov8x-custom-structure-all/weights/best.pt imgsz=1024 device=0 workers=8 batch=16