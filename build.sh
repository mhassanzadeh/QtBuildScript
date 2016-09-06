#!/bin/bash
export PATH="$PATH":/opt/arm/4.5.1/bin/

read -p "Run 'confclean'? (y/n) "
if [ "$REPLY" == "y" ]; then
        gmake clean
fi 

../configure -prefix /usr/local/qt-5.4.1 \
             -arch arm \
             -xplatform linux-arm-gnueabi-g++ \
             -opensource \
             -confirm-license \
             -static \
             -shared \
             -verbose \
             -optimized-qmake \
             -qt-zlib \
             -qt-libpng \
             -qt-libjpeg \
             -qt-freetype \
             -qt-harfbuzz \
             -qt-pcre \
             -no-pkg-config \
             -no-openssl \
             -no-qml-debug \
             -no-glib \
             -no-pulseaudio \
             -no-alsa \
             -no-c++11 \
             -no-cups \
             -no-pch \
             -no-dbus \
             -no-kms \
             -no-eglfs \
             -no-icu \
             -no-iconv \
             -no-use-gold-linker \
             -no-compile-examples \
             -no-gcc-sysroot \
             -directfb \
             -I /usr/local/Trolltech/qttslib-2312E/include \
             -L /usr/local/Trolltech/qttslib-2312E/lib

read -p "Run 'gmake'? (y/n) "
if [ "$REPLY" == "y" ]; then
    gmake -j5
fi
 
read -p "Run 'gmake install'? (y/n) "
if [ "$REPLY" == "y" ]; then
    sudo gmake install
fi
