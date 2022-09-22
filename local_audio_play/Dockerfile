ARG BUILD_FROM
FROM $BUILD_FROM

# Environment variables
ENV \
    LANG=C.UTF-8 \
    S6_BEHAVIOUR_IF_STAGE2_FAILS=2 \
    S6_CMD_WAIT_FOR_SERVICES=1

# Set shell
SHELL ["/bin/bash", "-o", "pipefail", "-c"]

# Setup base, install sox package
RUN apk add --no-cache jq alsa-utils alsa-plugins-pulse mpg123 sox

# Copy root filesystem
COPY rootfs /

#RUN chmod 0750 /etc/services.d/local_audio_play/run /etc/services.d/local_audio_play/finish /usr/bin/local_audio_play
RUN chmod 0750 /usr/bin/local_audio_play
CMD [ "/usr/bin/local_audio_play" ]

# Build arguments
ARG BUILD_ARCH
ARG BUILD_DATE
ARG BUILD_DESCRIPTION
ARG BUILD_NAME
ARG BUILD_REF
ARG BUILD_REPOSITORY
ARG BUILD_VERSION

# Labels
LABEL \
    io.hass.name="${BUILD_NAME}" \
    io.hass.description="${BUILD_DESCRIPTION}" \
    io.hass.arch="${BUILD_ARCH}" \
    io.hass.type="addon" \
    io.hass.version=${BUILD_VERSION} \
    maintainer="Oliver Völker <oliver@voelker.me>" \
    org.opencontainers.image.title="${BUILD_NAME}" \
    org.opencontainers.image.description="${BUILD_DESCRIPTION}" \
    org.opencontainers.image.vendor="magenbrot's HomeAssistant Add-ons" \
    org.opencontainers.image.authors="Oliver Völker <oliver@voelker.me>" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.url="https://github.com/magenbrot/HomeAssistant_AddOns" \
    org.opencontainers.image.source="https://github.com/${BUILD_REPOSITORY}" \
    org.opencontainers.image.documentation="https://github.com/${BUILD_REPOSITORY}/blob/main/README.md" \
    org.opencontainers.image.created=${BUILD_DATE} \
    org.opencontainers.image.revision=${BUILD_REF} \
    org.opencontainers.image.version=${BUILD_VERSION}
