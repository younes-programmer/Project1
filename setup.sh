#!/bin/bash
sudo apt update
sudo apt install hugo
sudo apt install make
hugo -d ./dist
echo "dist/" > .gitignore
hugo server -D
