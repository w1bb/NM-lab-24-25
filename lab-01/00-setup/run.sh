#!/bin/bash

docker rm new-octave-container
docker run --name new-octave-container -p 8888:8888 -v $(pwd)/../..:/home/jovyan/ new-nm-octave
