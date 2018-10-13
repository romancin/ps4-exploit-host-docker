FROM lsiobase/alpine:3.7

MAINTAINER romancin

# set version label
ARG BUILD_DATE
ARG VERSION
LABEL build_version="Romancin version:- ${VERSION} Build-date:- ${BUILD_DATE}"

# package version
ARG PS4EXPLOITHOSTVER="0.4.6a1"

    
# install flood webui
RUN apk add --no-cache \
     wget \
     python3 && \

 cd /app && \
 wget https://github.com/Al-Azif/ps4-exploit-host/releases/download/v$PS4EXPLOITHOSTVER/ps4-exploit-host-v$PS4EXPLOITHOSTVER.zip && \
 unzip /app/ps4-exploit-host-v$PS4EXPLOITHOSTVER.zip && \

# cleanup
 rm -rf \
        /tmp/*

# add local files
COPY root/ /

# ports and volumes
EXPOSE 53 80
