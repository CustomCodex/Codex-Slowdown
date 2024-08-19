![FiveM](https://img.shields.io/badge/FiveM-%2300a3e0.svg?style=flat&logo=discord&logoColor=white) ![ESX](https://img.shields.io/badge/ESX-%231c1c1c.svg?style=flat&logo=steam&logoColor=white) ![Version](https://img.shields.io/badge/version-1.0.0-blue.svg?style=flat) 

## Overview

The `codex-slowdown` script enhances the realism of vehicle interactions in FiveM roleplay by slowing down vehicles when their tires are shot. It also includes a feature to log these events to a Discord channel via a webhook, with a configurable system to prevent spam and provide clear, actionable information.

<img src="https://i.imgur.com/uwFqQds.png" alt="AutoNotify">

![Vehicle](https://img.shields.io/badge/Feature-Vehicle%20Speed%20Reduction-green.svg?style=flat) ![Logging](https://img.shields.io/badge/Feature-Discord%20Webhook%20Logging-orange.svg?style=flat) ![Single Log](https://img.shields.io/badge/Feature-Single%20Log%20per%20Tire%20Burst-red.svg?style=flat) ![Customizable](https://img.shields.io/badge/Feature-Customizable%20Configuration-yellow.svg?style=flat)

## Features

- **Vehicle Speed Reduction**: Automatically reduces the speed of a vehicle to a specified limit (e.g., 5 km/h) when any tire is shot. 
- **Discord Webhook Logging**: Sends a formatted message to a Discord channel using a webhook when a tire is shot.
- **Single Log per Tire Burst**: Ensures that only one log is sent per vehicle until all tires are repaired or the player exits the vehicle.
- **Customizable Configuration**: Easily adjust settings like speed limits, webhook URLs, and log icons through a configuration file.

## Installation

1. **Download** the repository and place it in your `resources` folder within your FiveM server directory.
2. **Configure** the script by editing the `config.lua` file:
   - Set `Config.WebhookURL` to your Discord webhook URL.
   - Adjust `Config.SlowdownSpeed` and `Config.EmbedIconURL` as needed.
3. **Add** the following line to your `server.cfg` file:
   ```plaintext
   start codex-slowdown

📧 **Support and Customization**:<br>
For any issues, customization requests, or additional support, feel free to reach out to us at [info@hutsakeee.nl](mailto:info@hutsakeee.nl). We’re here to help you enhance your roleplaying experience!


### Explanation:

- **Support and Customization Section**: Added a section for support and customization requests, including an email contact.
- **Issues and Contributions**: Updated to include a link to open issues and submit pull requests. Replace `https://github.com/your-repo/issues` and `https://github.com/your-repo/pulls` with the actual URLs of your GitHub repository.
