#!/usr/bin/env bash

# The pulse folder cannot be a symbolic link, because PulseAudio then doesn't start, so create it before stowing.
# Related bug report here: https://gitlab.freedesktop.org/pulseaudio/pulseaudio/issues/624
#                          https://gitlab.freedesktop.org/pulseaudio/pulseaudio/issues/242

PULSE_AUDIO_DIR=~/.config/pulse/

if [ ! -d "$PULSE_AUDIO_DIR" ]; then
	mkdir "$PULSE_AUDIO_DIR"
else
	echo "Folder $PULSE_AUDIO_DIR already exists."
fi
