#Dockerfile flexget
FROM tlnk/ubuntu:latest

ARG VERSION
ARG BUILD_DATE
ARG VCS_REF

#Install source + packages
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
        python3.5 \
        python-pip \
        cron

COPY entrypoint /entrypoint

#Install flexget
RUN pip install --upgrade setuptools && \
    pip install --upgrade pip && \
    pip install flexget && \
    mkdir /config && \
    chmod +x /entrypoint/*sh && \
    chmod +x /entrypoint/entrypoint.d/*.sh

#Cleaning
RUN apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


WORKDIR /config
ENTRYPOINT ["/bin/bash", "/entrypoint/entrypoint.sh"]
CMD ["/usr/local/bin/flexget", "-c"," /config/config.yml", "--loglevel", "info", "daemon", "start"]


LABEL maintainer="support@tlnk.fr"
LABEL org.label-schema.version=$VERSION
LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.vcs-ref=$VCS_REF
LABEL org.label-schema.vcs-url="https://github.com/tle06/Lychee.git"
LABEL org.label-schema.name="flexget"
LABEL org.label-schema.vendor="flexget"
LABEL org.label-schema.schema-version="1.0"
