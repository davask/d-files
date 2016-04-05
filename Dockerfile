FROM davask/d-ubuntu:14.04
MAINTAINER davask <contact@davaskweblimited.com>

LABEL dwl.files.language="php5"

RUN DWL_FILES_USER=davask

VOLUME /var/www/html

COPY ./dwl-setup-999-files.sh /tmp/dwl-setup-999-files.sh
COPY ./dwl-setup-0-files.sh /tmp/dwl-setup-0-files.sh
COPY ./dwl-setup.sh /tmp/dwl-setup.sh

CMD ["/tmp/dwl-setup.sh"]