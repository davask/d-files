FROM davask/d-base:latest
MAINTAINER davask <contact@davaskweblimited.com>

LABEL dwl.files.language="php5"

# define dir app within user folder
ENV DWL_APP_DIR html

# Instantiate container
RUN export DWL_INIT=files
RUN export DWL_INIT_DIR=$DWL_TMP_DIR/dwl-$DWL_INIT
RUN export DWL_INIT_COUNTER=0

COPY ./files.sh $DWL_INIT_DIR/$DWL_INIT_COUNTER-files.sh
RUN DWL_INIT_COUNTER=$(($DWL_INIT_COUNTER+1))
