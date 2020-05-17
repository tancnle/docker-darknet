# YOLO Object Detection with Darknet

![Docker Automated build](https://img.shields.io/docker/cloud/automated/tancnle/darknet-yolo.svg?style=popout-square)
![Docker Cloud Build Status](https://img.shields.io/docker/cloud/build/tancnle/darknet-yolo.svg?style=popout-square)

A convenient way to do object detection using YOLOv3/YOLOv4 model via Docker.

## Usage

Run object detection on an image

```bash
# YOLO v3
docker run --volume ${PWD}/output:/output \
           --interactive --rm tancnle/darknet-yolo < interesting.png

# YOLO v4
docker run --volume ${PWD}/output:/output \
           --interactive --rm tancnle/darknet-yolo-v4 < interesting.png
```

View the image with polygon-bounding boxes

```bash
open output/prediction.png
```

## Example Output

| Original | YOLO v3 | YOLO v4 |
| :-: | :-: | :-: |
| ![original](https://github.com/tancnle/docker-darknet/raw/master/examples/storefront.jpg) | ![YOLO v3](https://github.com/tancnle/docker-darknet/raw/master/examples/detected-storefront.jpg) | ![YOLO v4](https://github.com/tancnle/docker-darknet/raw/master/examples/detected-storefront-v4.jpg) |

```bash
# YOLO v3
Loading weights from yolov3.weights...Done!
/tmp/image: Predicted in 19.697341 seconds.
pottedplant: 98%
bicycle: 89%
bicycle: 73%

# YOLO v4
Loading weights from yolov4.weights...mini_batch = 1, batch = 8, time_steps = 1, train = 0
nms_kind: greedynms (1), beta = 0.600000
nms_kind: greedynms (1), beta = 0.600000
nms_kind: greedynms (1), beta = 0.600000
Done! Loaded 162 layers from weights-file
Not compiled with OpenCV, saving to predictions.png instead

 seen 64, trained: 32032 K-images (500 Kilo-batches_64)
/tmp/image: Predicted in 22087.479000 milli-seconds.
pottedplant: 98%
bicycle: 38%
bicycle: 47%
bicycle: 53%
person: 55%
person: 67%
```

## References
* YOLO: Real-Time Object Detection (https://pjreddie.com/darknet/yolo/)
* Darknet (https://github.com/pjreddie/darknet)
* Darknet (https://github.com/AlexeyAB/darknet)
