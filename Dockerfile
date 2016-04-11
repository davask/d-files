FROM davask/d-ubuntu:14.04
MAINTAINER davask <contact@davaskweblimited.com>

LABEL dwl.files.language="php5"

# define dir app within user folder
ENV DWL_APP_DIR html

# Instantiate container
RUN export DWL_INIT=files

COPY ./files.sh /tmp/dwl-$DWL_INIT/$DWL_INIT_COUNTER-files.sh
RUN DWL_INIT_COUNTER=$(($DWL_INIT_COUNTER+1))
