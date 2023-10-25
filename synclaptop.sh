#!/bin/sh
rsync -rv --delete --ignore-existing --progress /home/srengarajan/Documents/ srengarajan@laptop:/home/srengarajan/Documents/
rsync -rv --delete --ignore-existing --progress /home/srengarajan/Pictures/ srengarajan@laptop:/home/srengarajan/Pictures/
rsync -rv --ignore-existing --progress /home/srengarajan/Downloads/ srengarajan@laptop:/home/srengarajan/Downloads/
rsync -rv --delete --ignore-existing --progress /home/srengarajan/scripts/ srengarajan@laptop:/home/srengarajan/scripts/
