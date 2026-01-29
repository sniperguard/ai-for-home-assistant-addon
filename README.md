# AI for Home Assistant - Cloud Relay

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fsniperguard%2Fai-for-home-assistant-addon)

**Control your Home Assistant from anywhere - no port forwarding, no Nabu Casa subscription required.**

This add-on enables the [AI for Home Assistant iOS app](https://apps.apple.com/app/id6504422964) to connect to your local Home Assistant from outside your network.

## Features

- **No port forwarding** - Works behind any firewall or CGNAT
- **No subscription required** - Free alternative to Nabu Casa for remote access
- **Secure** - All traffic encrypted with TLS
- **One-tap setup** - Installs automatically from the iOS app
- **Auto-reconnect** - Maintains connection automatically

## How It Works

```
iOS App ←──WSS──→ Relay Server ←──WSS──→ This Add-on → Home Assistant
               (encrypted)              (encrypted)      (local)
```

Your commands are relayed through our secure server. The relay only forwards encrypted traffic - it never sees your Home Assistant data or credentials.

## Quick Start

### Option 1: One-Tap Setup (Recommended)

In the AI for Home Assistant iOS app:
1. Go to **Settings** → **Remote Access**
2. Tap **Cloud Relay** → **Set Up Now**
3. Done! The app installs and configures this add-on automatically.

### Option 2: Manual Installation

1. Click the badge above to add this repository
2. Install "AI for Home Assistant - Cloud Relay"
3. The iOS app will configure it automatically when you set up remote access

## Requirements

- Home Assistant OS or Supervised installation
- [AI for Home Assistant iOS app](https://apps.apple.com/app/id6504422964)
- Internet connection

## Support

- [GitHub Issues](https://github.com/sniperguard/ai-for-home-assistant-addon/issues)
- [Contact Support](https://sniper-guard.com/contact)

## About AI for Home Assistant

AI for Home Assistant is a powerful iOS app for controlling your smart home:

- Beautiful, customizable dashboard
- Apple Watch app with complications
- Siri & Shortcuts integration
- AI-powered voice commands
- Widgets for quick access

[![Download on the App Store](https://developer.apple.com/assets/elements/badges/download-on-the-app-store.svg)](https://apps.apple.com/app/id6504422964)

---

Made with ❤️ by [SniperGuard](https://sniper-guard.com)
