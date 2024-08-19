# codex-slowdown

**Author:** customcodex  
**Version:** 1.0.0  
**Description:** This FiveM script slows down vehicles to a configurable speed when a tire is shot, enhancing realism for roleplay scenarios.

## Features
- Slow down vehicles to a configurable speed when a tire is burst.
- Supports only player-controlled vehicles.
- Logs tire burst events to the server console.
- Configurable options for easy customization.

## Installation

1. **Download** the script and place it in your `resources` folder.
2. **Add** `start codex-slowdown` to your `server.cfg`.
3. **Restart** your server.

## Configuration

Edit the `config.lua` file to customize the script's behavior:

- `Config.SlowdownSpeed`: Set the speed (in km/h) that vehicles slow down to when a tire is shot. Default is `5.0`.
- `Config.CheckFrequency`: The frequency (in milliseconds) for the script to check the status of tires. Default is `100`.
- `Config.OnlyPlayerVehicles`: Apply the slowdown only to vehicles controlled by players. Default is `true`.
- `Config.LogTireBurst`: Enable or disable logging tire burst events to the server console. Default is `true`.

## Compatibility

- This script is compatible with ESX and Lua 5.4.

## License

This script is released under the MIT License.
