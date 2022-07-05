# Local Audio Play

Play audio on the local hardware. For example on speakers connected to the 3.5mm jack or speakers connected via USB.
Also works on virtual hardware if the audio device is passed through.

![Supports aarch64 Architecture][aarch64-shield]
![Supports amd64 Architecture][amd64-shield]
![Supports armhf Architecture][armhf-shield]
![Supports armv7 Architecture][armv7-shield]
![Supports i386 Architecture][i386-shield]

[aarch64-shield]: https://img.shields.io/badge/aarch64-yes-green.svg
[amd64-shield]: https://img.shields.io/badge/amd64-yes-green.svg
[armhf-shield]: https://img.shields.io/badge/armhf-yes-green.svg
[armv7-shield]: https://img.shields.io/badge/armv7-yes-green.svg
[i386-shield]: https://img.shields.io/badge/i386-yes-green.svg

[![Builder](https://github.com/magenbrot/HomeAssistant_AddOns/actions/workflows/builder.yaml/badge.svg)](https://github.com/magenbrot/HomeAssistant_AddOns/actions/workflows/builder.yaml)
[![Lint](https://github.com/magenbrot/HomeAssistant_AddOns/actions/workflows/lint.yaml/badge.svg)](https://github.com/magenbrot/HomeAssistant_AddOns/actions/workflows/lint.yaml)
[![Codacy Security Scan](https://github.com/magenbrot/HomeAssistant_AddOns/actions/workflows/codacy.yml/badge.svg)](https://github.com/magenbrot/HomeAssistant_AddOns/actions/workflows/codacy.yml)

## Source

This add-on is inspired by Dingedan's local_audio_player add-on (<https://github.com/dingedan/Hassio_addons>)

## Compatibility

It's working with:

- Home Assistant Core > 2022.7.X
- Home Assistant Supervisor > 2022.05.3
- Home Assistant OS > 8.2.

## Installation

### via Repository

[![Open your Home Assistant instance and show the add add-on repository dialog with a specific repository URL pre-filled.](https://my.home-assistant.io/badges/supervisor_add_addon_repository.svg)](https://my.home-assistant.io/redirect/supervisor_add_addon_repository/?repository_url=https://github.com/magenbrot/HomeAssistant_AddOns)

### manual installation

1. Copy these files into the /addons/local_audio_play/ folder
2. In the UI, Go to configuration > Add-ons, Backups & Supervisor > Add-On Store
3. If the add-on is not listed under 'Local add-ons', hit 'reload' from the 'more' menu.
4. Install

## Usage

### Play an MP3 file from the media folder

```yaml
service: hassio.addon_stdin
data:
  addon: <id>_local_audio_play
  input: media/SurfinBird.mp3
```
