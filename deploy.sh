#!/bin/bash
set -e

rm -rf public/* resources/*
hugo
rsync -avz --delete public/ root@docs.pixeldrain.com:/var/www/docs.pixeldrain.com/
