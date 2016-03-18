#!/bin/sh


LOCAL_PATH=`dirname $0`
LOCAL_PATH=`cd $LOCAL_PATH && pwd`

JOBS=1

ln -sf libglshim.a $LOCAL_PATH/../../../obj/local/$1/libGL.a

if [ "$1" = armeabi-v7a ]; then
../setEnvironment-armeabi-v7a.sh sh -c "cd neverball-1.5.4 && make" && mv -f neverball-1.5.4/neverball libapplication-armeabi-v7a.so
fi
