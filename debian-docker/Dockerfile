FROM debian:12-slim AS base
LABEL maintainer="david@indrovi.cz"

# copy debian-docker folder to /tmp
COPY . /tmp/fusionpbx-install.sh
WORKDIR /tmp/fusionpbx-install.sh
# fix permissions
RUN chmod -R +x ./*
# install packages
RUN ./pre-install.sh

FROM base AS install

WORKDIR /tmp/fusionpbx-install.sh
RUN ./install.sh
RUN rm -rf /tmp/fusionpbx-install.sh

RUN chown www-data:www-data /var/log/php8.1-fpm.log
RUN chown -R www-data:www-data /var/log/nginx

FROM install AS final

VOLUME [ "/var/cache/fusionpbx", \
         "/var/www/fusionpbx", \
         "/etc/freeswitch", \
         "/usr/share/freeswitch", \
         "/var/lib/freeswitch", \
         "/var/lib/postgresql", \
         "/var/log", \
         "/var/run/freeswitch" ]

CMD /usr/bin/supervisord -n

# FusionPBX web admin
EXPOSE 80 443
# SIP
EXPOSE 5060-5091
# RTP UDP
EXPOSE 16384-32768/udp
