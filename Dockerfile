# Pull base image.
FROM jlesage/baseimage:ubuntu-16.04-v2.4.1

ENV APP_NAME="drpjoin"
ENV DRP="https://127.0.0.1:8092"

# Copy the start script.
COPY drpjoin /usr/bin/drpjoin
COPY startapp.sh /startapp.sh

RUN chmod 755 /usr/bin/drpjoin
RUN add-pkg curl

#CMD ["/bin/bash"]
