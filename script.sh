#!/bin/bash

FSB_PROJ_LOCATION=~/dev/rneatherway-fsharpbinding/monodevelop/MonoDevelop.FSharpBinding/MonoDevelop.FSharp.fsproj.orig
#MD_LIB_LOCATION=/usr/lib/monodevelop
MD_LIB_LOCATION=~/dev/monodevelop/main/build


FILES=$(grep INSERT_FSPROJ_MDROOT $FSB_PROJ_LOCATION | grep HintPath | cut -d'>' -f 2 | cut -d'<' -f1 | tr '\\' '/' | cut -d'/' -f2-)

for FILE in $FILES
do
    echo mkdir -p `dirname $FILE`
    mkdir -p `dirname $FILE`
done

for FILE in $FILES
do
    echo cp /usr/lib/monodevelop/$FILE ./$FILE
    cp /usr/lib/monodevelop/$FILE ./$FILE
done
