#!/bin/sh

declare -a IMG_EXTENSIONS=("svg" "png" "gif" "jpg" "jpeg")

SLIDES_FILE=$1
SLIDES_PATH=`readlink -f $SLIDES_FILE`

PRESENTATION_NAME=` basename  $(dirname $SLIDES_PATH)` 


echo "presentation name: " $PRESENTATION_NAME
OUTPUT_DIR=`echo $PRESENTATION_NAME`_site
echo "output dir: " $OUTPUT_DIR


echo "exporting slides as static site..."
reveal-md $SLIDES_FILE --static $OUTPUT_DIR 

CURRENT_DIR=`pwd`
OUTPUT_ABSOLUTE_DIR=`readlink -f $OUTPUT_DIR`
cd `dirname $SLIDES_PATH`


for ext in "${IMG_EXTENSIONS[@]}"; do
    echo "extension: $ext"
    IMG_FILES=`find | grep $ext `
    echo "image files: $IMG_FILES"
    cp $IMG_FILES $OUTPUT_ABSOLUTE_DIR
    
done

cd $CURRENT_DIR


