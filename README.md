# pi-media-center
Raspberry PI Media Center configuration

## OSMC
Install OSMC on clean SD card

## Pulse Audio

### Install
```bash
sudo apt install pulseaudio
```
**note:** check if `pavumeter paman paprefs` packages are needed

### Configure
```bash
pacmd list-sinks
pacmd set-default-sink <INDEX>
```
Above is not tested on clean system

Configure `/etc/asound.conf`
```bash
pcm.pulse {
    type pulse
}

ctl.pulse {
    type pulse
}

pcm.!default {
    type pulse
}
ctl.!default {
    type pulse
}
```

<!-- CHECK IF THIS IS NEEDED
Edit `/et/pulse/default.pa`, uncomment
```bash
load-module module-alsa-sink
set-default-sink output
``` -->

```bash
pulseaudio -D
```

<!-- `/etc/systemd/system/pulseaudio.service`

```bash
[Unit]
Description=PulseAudio Daemon

[Install]
WantedBy=multi-user.target

[Service]
Type=simple
PrivateTmp=true
ExecStart=/usr/bin/pulseaudio --system --realtime --disallow-exit --no-cpu-limit
``` -->

## Spotify

[Configuration Instruction](spotify/README.md)
