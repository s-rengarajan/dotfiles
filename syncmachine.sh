#!/bin/sh
rsync -rv --delete --ignore-existing --progress /home/srengarajan/Documents/ srengarajan@machine:/home/srengarajan/Documents/
rsync -rv --delete --ignore-existing --progress /home/srengarajan/Pictures/ srengarajan@machine:/home/srengarajan/Pictures/
rsync -rv --ignore-existing --progress /home/srengarajan/Downloads/ srengarajan@machine:/home/srengarajan/Downloads/
rsync -rv --delete --ignore-existing --progress /home/srengarajan/scripts/ srengarajan@machine:/home/srengarajan/scripts/
