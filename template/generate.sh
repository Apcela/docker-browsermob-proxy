#!/bin/bash




ARCH=$1
SOURCE=$2

cd ../$ARCH

echo "# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" > Dockerfile
echo "# NOTE: DO *NOT* EDIT THIS FILE.  IT IS GENERATED." >> Dockerfile
echo "# PLEASE UPDATE Dockerfile.txt INSTEAD OF THIS FILE" >> Dockerfile
echo "# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!" >> Dockerfile
echo FROM $SOURCE >> Dockerfile
echo "" >> Dockerfile

cat ../template/Dockerfile.txt >> Dockerfile

cp ../template/start.sh ./