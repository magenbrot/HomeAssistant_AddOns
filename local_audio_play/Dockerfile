ARG BUILD_FROM
FROM $BUILD_FROM

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Setup base, install sox package
#RUN apk add --no-cache jq alsa-utils alsa-plugins-pulse mpg123
RUN apt-get update && apt-get -y install jq alsa-utils libasound2-plugins mpg123

# Copy root filesystem
COPY rootfs /
CMD [ "/usr/bin/run.sh" ]
