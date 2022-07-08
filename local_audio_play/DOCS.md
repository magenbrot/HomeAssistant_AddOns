# Home Assistant Add-on: Local Audio Play

## How to use

This add-on can play mp3 files on the connected sound device. This can be a speaker connected to the 3.5mm jack or a USB sound card passed through Proxmox Virtual Environment to a Home Assistant OS installation.

You can call the addon with the "hassio.addon_stdin" service.

Example:

```yaml
service: hassio.addon_stdin
data:
  addon: <id>_local_audio_play
  input: media/SurfinBird.mp3
```
