#!/command/with-contenv bashio
# shellcheck shell=bash

set -e

bashio::log.info "local_audio_play starting"

VOLUME=$(bashio::config 'volume')
bashio::log.info "Setting volume to ${VOLUME}"
amixer -q sset 'Master' "${VOLUME}"

while read -r input; do
  input=$(bashio::jq "${input}" '.')
  bashio::log.info "Stdin: ${input}"
  if ! msg=$(mpg123 "${input}"); then
    bashio::log.error "Playing failed: ${msg}"
  fi
done
