#!/command/with-contenv bashio
set -e

bashio::log.info "local_audio_play starting"

VOLUME=$(bashio::config 'volume')
bashio::log.info "Setting volume to ${VOLUME}"
amixer -q sset 'Master' ${VOLUME}

# Read from STDIN aliases to play file
while read -r input; do
  # removing JSON stuff
  #input="$(echo "$input" | bashio::jq '.')"
  input=$(bashio::jq $input '.')
  bashio::log.info "Read alias: $input"

  if ! msg="$(mpg123 $input)"; then
    bashio::log.error "Playing failed -> $msg"
  fi
done
