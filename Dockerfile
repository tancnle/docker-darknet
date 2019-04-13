# Sha256 corresponds to tag '18.04'
FROM ubuntu@sha256:017eef0b616011647b269b5c65826e2e2ebddbe5d1f8c1e56b3599fb14fabec8

RUN apt-get update \
  && apt-get install -y --no-install-recommends \
    build-essential=12.* \
    ca-certificates=* \
    curl=7.58.* \
    gcc=4:7.3.* \
    git=1:2.17* \
  && rm -rf /var/lib/apt/lists/*

RUN git clone --depth 1 https://github.com/pjreddie/darknet.git

RUN mkdir /output

WORKDIR /darknet

# Download weights for YOLOv3 dection
RUN curl -sSLO https://pjreddie.com/media/files/yolov3.weights

RUN make

COPY darknet.sh ./

ENTRYPOINT ["./darknet.sh"]

CMD ["detect", "cfg/yolov3.cfg", "yolov3.weights", "-out", "/output/prediction"]
