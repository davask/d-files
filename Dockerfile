FROM davask/ubuntu:14.04
MAINTAINER davask <contact@davaskweblimited.com>

LABEL dwl.files.language="php5"

RUN DWL_FILES_USER=davask

VOLUME /var/www/html

COPY ./dwl-setup-0-files.sh /tmp/dwl-setup-0-files.sh
RUN chmod 700 /tmp/dwl-setup-0-files.sh

CMD ["/tmp/dwl-setup-0-files.sh"]