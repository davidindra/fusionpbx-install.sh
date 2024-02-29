cp "$(dirname $0)/source/freeswitch.init" /etc/init.d/freeswitch
cp "$(dirname $0)/source/etc.default.freeswitch" /etc/default/freeswitch

/usr/sbin/service freeswitch restart
