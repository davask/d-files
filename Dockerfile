FROM davask/d-ubuntu:14.04
MAINTAINER davask <contact@davaskweblimited.com>

LABEL dwl.files.language="php5"

ENV APACHE_RUN_USER www-data
ENV APACHE_RUN_GROUP www-data

RUN chown -R $APACHE_RUN_USER:$APACHE_RUN_GROUP /tmp

USER $APACHE_RUN_USER

VOLUME /var/www/html

COPY ./dwl-setup-0-files.sh /tmp/dwl-setup-0-files.sh
COPY ./dwl-setup.sh /tmp/dwl-setup.sh
RUN chmod 700 /tmp/dwl-setup.sh

CMD ["/tmp/dwl-setup.sh"]