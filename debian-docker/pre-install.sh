#!/bin/sh

#upgrade the packages
apt update && apt upgrade -y

#install packages
apt install -y git lsb-release
apt install -y wget curl ca-certificates dialog nano net-tools gpg snmpd

apt install -y supervisor

apt install -y autoconf automake devscripts g++ git-core libncurses5-dev libtool make libjpeg-dev
apt install -y pkg-config flac  libgdbm-dev libdb-dev gettext sudo equivs mlocate git dpkg-dev libpq-dev
apt install -y liblua5.2-dev libtiff5-dev libperl-dev libcurl4-openssl-dev libsqlite3-dev libpcre3-dev
apt install -y devscripts libspeexdsp-dev libspeex-dev libldns-dev libedit-dev libopus-dev libmemcached-dev
apt install -y libshout3-dev libmpg123-dev libmp3lame-dev yasm nasm libsndfile1-dev libuv1-dev libvpx-dev
apt install -y libavformat-dev libswscale-dev libvlc-dev python3-distutils sox libsox-fmt-all

apt install -y sqlite3 unzip

apt install -y fail2ban

apt install -y vim git dbus haveged ssl-cert qrencode
apt install -y ghostscript libtiff5-dev libtiff-tools at

apt install -y sngrep

#change the working directory
cd "$(dirname "$0")"