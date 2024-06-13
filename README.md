# table_structure_recognition

Table detection and table structure recognition using Yolov5/Yolov8, and you can get the same (even better) result compared with Table Transformer (TATR) with smaller models.

## Dataset

You can download PubTables-1M from [Microsoft Research Open Data](https://msropendata.com/datasets/505fcbe3-1383-42b1-913a-f651b8b712d3), and uncompress `PubTables-1M-Image_Page_Detection_PASCAL_VOC.tar.gz` and `PubTables-1M-Image_Table_Structure_PASCAL_VOC.tar.gz` to the directory `data/pubtables-1m/`. Or you can download PubTables-1M, FinTabNet.c and ICDAR-2013.c using [data/download_data.sh](data/download_data.sh).

Then, you can run the 4 notebooks ([data/voc2coco_detection.ipynb](data/voc2coco_detection.ipynb), [data/voc2coco_structure.ipynb](data/voc2coco_structure.ipynb), [data/voc2coco_structure_fintabnet.ipynb](data/voc2coco_structure_fintabnet.ipynb), and [data/voc2coco_structure_icdar2013.ipynb](data/voc2coco_structure_icdar2013.ipynb)) to convert VOC format to COCO format.

## Train Model (Yolov5)

You can clone latest Yolov5 code from [https://github.com/ultralytics/yolov5](https://github.com/ultralytics/yolov5) to the directory `yolov5/`, and run the 2 scripts to train table detection model ([yolov5/train_PubTables-1M_detection.sh](yolov5/train_PubTables-1M_detection.sh)) and table structure recognition model ([yolov5/train_PubTables-1M_structure.sh](yolov5/train_PubTables-1M_structure.sh)). You may need to change the variable `path` of the yaml files according to your environment in the directory `yolov5/data/`.

I have trained each model using yolov5s for 10 epochs, and you can use the models in the directory `yolov5/runs/` for fast try or finetune from the checkpoints.

## Train Model (Yolov8)

You can change to the directory `yolov8/`, and run the 2 scripts to train table detection model ([yolov8/train_PubTables-1M_detection.sh](yolov8/train_PubTables-1M_detection.sh)) and table structure recognition model ([yolov8/train_PubTables-1M_structure.sh](yolov8/train_PubTables-1M_structure.sh)). You may need to change the variable `path` of the yaml files according to your environment in the directory `yolov8/data/`.

I have trained each model using yolov8s for 10 epochs, and you can use the models in the directory `yolov8/runs/detect/` for fast try or finetune from the checkpoints.

## Use Model

You can run the notebook [table_structure_recognition.ipynb](table_structure_recognition.ipynb) to convert a table image to an excel file. Please pay attention to the `ocr` function, you should use [all-in-one-ai](https://www.amazonaws.cn/en/solutions/horizontal/guidance/all-in-one-ai/), or PaddleOCR, or any OCR service to get the ocr result.