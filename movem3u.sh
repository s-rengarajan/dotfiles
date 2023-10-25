#!/bin/sh
PATHTOMUSIC="/home/srengarajan/Documents/Metadata_Extensions/Sidify_Music_Converter"
PATHTOPLAYLISTS="/home/srengarajan/Documents/Metadata_Extensions/Sidify_Music_Converter/playlists"
find $(echo "${PATHTOMUSIC}/") -name "*.m3u" -exec mv -t $(echo "${PATHTOPLAYLISTS}/") {} +
