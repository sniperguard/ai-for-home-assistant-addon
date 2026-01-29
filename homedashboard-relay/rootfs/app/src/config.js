const fs = require('fs');
const path = require('path');

// Data directory for persistent storage
const DATA_DIR = process.env.DATA_DIR || '/data';
const USER_ID_FILE = path.join(DATA_DIR, 'user_id');

module.exports = {
    // Relay server URL
    relayUrl: process.env.RELAY_URL || 'wss://relay.sniper-guard.com',

    // Pairing code from config (used once to get userId)
    pairingCode: process.env.PAIRING_CODE || '',

    // User ID (saved after successful pairing)
    get userId() {
        try {
            return fs.readFileSync(USER_ID_FILE, 'utf8').trim();
        } catch {
            return null;
        }
    },

    // Save user ID after successful pairing
    saveUserId(userId) {
        fs.mkdirSync(DATA_DIR, { recursive: true });
        fs.writeFileSync(USER_ID_FILE, userId);
    },

    // Home Assistant connection - use Supervisor API if available
    haUrl: process.env.SUPERVISOR_TOKEN
        ? 'http://supervisor/core'
        : process.env.HA_URL || 'http://localhost:8123',

    haToken: process.env.SUPERVISOR_TOKEN || process.env.HA_TOKEN || ''
};
