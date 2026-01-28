# HomeDashboard Relay - Home Assistant Add-on

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https%3A%2F%2Fgithub.com%2Fsniperguard%2Fhomedashboard-ha-addon)

**Control your Home Assistant from anywhere - no port forwarding, no Nabu Casa subscription required.**

This add-on enables the [HomeDashboard iOS app](https://apps.apple.com/app/id6504422964) to connect to your local Home Assistant installation from outside your network.

<p align="center">
  <img src="https://sniper-guard.com/images/homedashboard-relay-diagram.png" alt="How it works" width="600">
</p>

## Features

- **No port forwarding** - Works behind any firewall or CGNAT
- **No subscription required** - Free alternative to Nabu Casa for remote access
- **Secure** - All traffic encrypted with TLS
- **Simple setup** - Just enter a pairing code
- **Auto-reconnect** - Maintains connection automatically

## How It Works

```
iPhone App ←──WSS──→ Relay Server ←──WSS──→ This Add-on → Home Assistant
                    (encrypted)              (encrypted)      (local)
```

Your commands are relayed through our secure server. The relay only forwards encrypted traffic - it never sees your Home Assistant data or credentials.

## Quick Start

### 1. Install the Add-on

Click the button above, or manually add this repository:
```
https://github.com/sniperguard/homedashboard-ha-addon
```

### 2. Get a Pairing Code

In the HomeDashboard iOS app:
1. Go to **Settings** → **Remote Access**
2. Select **HomeDashboard Relay** → **Set Up**
3. Copy the 6-character code

### 3. Configure & Start

1. Paste the pairing code in the add-on configuration
2. Click **Save**, then **Start**
3. Return to the app and tap **Check Connection**

That's it! You can now control your Home Assistant from anywhere.

## Requirements

- Home Assistant OS or Supervised installation
- [HomeDashboard iOS app](https://apps.apple.com/app/id6504422964)
- Internet connection

## Support

- [GitHub Issues](https://github.com/sniperguard/homedashboard-ha-addon/issues)
- [HomeDashboard Support](https://sniper-guard.com/contact)

## About HomeDashboard

HomeDashboard is a powerful iOS app for controlling your Home Assistant smart home:

- Beautiful, customizable dashboard
- Apple Watch app with complications
- Siri & Shortcuts integration
- AI-powered voice commands
- Widgets for quick access

[![Download on the App Store](https://developer.apple.com/assets/elements/badges/download-on-the-app-store.svg)](https://apps.apple.com/app/id6504422964)

---

Made with ❤️ by [SniperGuard](https://sniper-guard.com)
