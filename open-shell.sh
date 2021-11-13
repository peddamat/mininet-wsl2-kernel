#!/bin/sh

docker exec -it $(docker ps |grep wsl2-kernel | cut -f1 -d' ') /bin/bash
