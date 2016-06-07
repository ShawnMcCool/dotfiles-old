#!/bin/bash

pushd ~/Apps
wget $1
filename=$(sed "s/http:\/\/download\.jetbrains\.com\/idea\///" <<< $1)
folder=$(sed "s/\.tar\.gz//" <<< $filename)
folder=$(sed "s/ideaIU/idea\-IU/" <<< $folder)
tar -zxvf $filename
rm $filename
rm Idea
ln -s ./$folder ./Idea
popd
