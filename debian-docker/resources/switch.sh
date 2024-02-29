#!/bin/sh

#move to script directory so all relative paths work
cd "$(dirname "$0")"

#includes
. ./config.sh
. ./environment.sh

if [ .$switch_source = .true ]; then
	if [ ."$switch_branch" = "master" ]; then
		echo "Building Docker from FreeSWITCH master sources is not supported."
	exit 1
	else
		switch/source-release.sh
	fi

	#add sounds and music files
	switch/source-sounds.sh

	#copy the switch conf files to /etc/freeswitch
	switch/conf-copy.sh

	#set the file permissions
	switch/package-permissions.sh

	#init service
	switch/package-sysvinit.sh
fi

if [ .$switch_package = .true ]; then
	echo "Building Docker from FreeSWITCH packages is not supported."
	exit 1
fi
