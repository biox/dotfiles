#! /bin/bash

artist=$( cmus-remote -Q | grep "tag artist " | sed s/"tag artist "/""/g )
title=$( cmus-remote -Q | grep "tag title " | sed s/"tag title "/""/g )
album=$( cmus-remote -Q | grep "tag album " | sed s/"tag album "/""/g )

notify-send -t 3000 "Now Playing" "$title by $artist" -u normal
