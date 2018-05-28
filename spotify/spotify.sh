#!/bin/sh
# Start script for spotify-connect-web
# https://github.com/Fornoth/spotify-connect-web
SPOTIFY_DIR=/opt/spotify
SPOTIFY_USERNAME=user   #User numeric ID
SPOTIFY_PASS=pass
INSTANCE_NAME=osmc
PLAYBACK_DEVICE=pulse
BITRATE=320
SPOTIFY_KEY=$SPOTIFY_DIR/spotify_appkey.key

export LD_LIBRARY_PATH=$SPOTIFY_DIR

python $SPOTIFY_DIR/connect.py\
        --username $SPOTIFY_USERNAME\
        --password $SPOTIFY_PASS\
        --name $INSTANCE_NAME\
        --playback_device $PLAYBACK_DEVICE\
        --bitrate $BITRATE\
        --key $SPOTIFY_KEY