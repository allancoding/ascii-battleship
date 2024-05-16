#!/bin/bash
echo "Building Ascii Battleship"
# create the .tmp directory
mkdir -p .tmp
# copy the source files to the tmp directory
cp -r src/asciiBattleship/*.java .tmp
# get all of the files
cd .tmp
find ./ -name "*.java" > sources.txt
# compile the source files
javac -encoding UTF-8 -cp ../lib/* -d ../build @sources.txt
cd ..
mkdir -p build
unzip -q -o lib/*.jar -d build
# add the jar dependencies to the classpath
jar cmf manifest.txt Ascii_Battleship.jar -C build .
# remove the .tmp directory
rm -r .tmp
rm -r build
echo "Done!"