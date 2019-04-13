# YOLOv3 Object Detection with Darknet

A convenient way to do object detection via Docker.

## Usage

Build a local Docker image
```bash
docker build -t docker-darknet:dev .
```

Run object detection on an image
```bash
docker run --volume ${PWD}/output:/output \
           --interactive docker-darknet:dev < data/interesting.png
```

View the image with polygon-bounding boxes
```bash
open output/prediction.png
```

## References
* YOLO: Real-Time Object Detection (https://pjreddie.com/darknet/yolo/)
* Darknet (https://github.com/pjreddie/darknet)
