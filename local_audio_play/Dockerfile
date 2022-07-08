ARG BUILD_FROM
FROM $BUILD_FROM

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Setup base, install sox package
RUN apk add --no-cache jq alsa-utils alsa-plugins-pulse mpg123

# Copy root filesystem
COPY rootfs /
CMD [ "/usr/bin/run.sh" ]
