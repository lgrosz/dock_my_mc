#!/bin/bash

sudo docker run \
	-it \
	--detach \
	--publish 25565:25565 \
	--net mc \
	--name mc \
	-v $(pwd)/data:/usr/server/data \
	dock_my_mc

