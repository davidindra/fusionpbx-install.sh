FROM debian:12-slim
LABEL maintainer="david@indrovi.cz"

COPY . /tmp/fusionpbx-install.sh

WORKDIR /tmp/fusionpbx-install.sh/debian-docker

RUN ./pre-install.sh

RUN ./install.sh

VOLUME [ "/var/cache/fusionpbx", \
         "/var/www/fusionpbx", \
         "/etc/freeswitch", \
         "/usr/share/freeswitch", \
         "/var/lib/freeswitch", \
         "/var/lib/postgresql", \
         "/var/log/freeswitch", \
         "/var/run/freeswitch" ]

ENTRYPOINT ["service postgresql start && service snmpd start && service freeswitch start && service php8.1-fpm start && service nginx start"]

# FusionPBX web admin
EXPOSE 80 443
# SIP
EXPOSE 5060-5091
# RTP UDP
EXPOSE 16384-32768/udp
