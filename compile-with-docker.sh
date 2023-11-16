#!/bin/sh
docker build -t uvk5 .
docker run -v $(pwd):/app uvk5 /bin/bash -c "make clean && make -j5"
