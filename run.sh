#!/bin/bash

if [[ ! $(docker container ls -a --filter "name=wsl2-kernel" | grep wsl2-kernel) ]]
then
    docker run -it -v $(pwd):/root/kernel --name wsl2-kernel wsl2-kernel:latest 
else
    docker start -i wsl2-kernel
fi
