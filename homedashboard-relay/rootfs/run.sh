#!/usr/bin/with-contenv bashio
# AI for Home Assistant - Cloud Relay Add-on

set -e

# Read configuration
PAIRING_CODE=$(bashio::config 'pairing_code')

# Check if we have a saved user_id or need to pair
if [ ! -f /data/user_id ] && [ -z "$PAIRING_CODE" ]; then
    bashio::log.error "Pairing code required. Get one from the AI for Home Assistant app:"
    bashio::log.error "  Settings > Remote Access > Cloud Relay > Set Up"
    bashio::exit.nok
fi

# Export environment
export RELAY_URL="wss://relay.sniper-guard.com"
export PAIRING_CODE="$PAIRING_CODE"
export HA_URL="http://supervisor/core"
export SUPERVISOR_TOKEN="$SUPERVISOR_TOKEN"
export DATA_DIR="/data"

bashio::log.info "Starting AI for Home Assistant Cloud Relay..."
bashio::log.info "Relay URL: $RELAY_URL"

if [ -f /data/user_id ]; then
    bashio::log.info "User ID: configured"
elif [ -n "$PAIRING_CODE" ]; then
    bashio::log.info "Pairing code: $PAIRING_CODE (will validate on connect)"
fi

# Start relay client
cd /app
exec node src/index.js
