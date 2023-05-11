#!/bin/bash
for i in {4096..4178}
do
    if [ -f "IMG_$i.jpg" ]; 
        then
        magick IMG_$i.jpg -format "%[exif:GPSLatitude]" info: >> data.txt
        echo \ >> data.txt
        magick IMG_$i.jpg -format "%[exif:GPSLongitude]" info: >> data.txt
        echo \ >> data.txt
    fi
done