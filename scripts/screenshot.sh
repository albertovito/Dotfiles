#!/bin/bash
FILENAME="screenshot-`date +%F-%T`"
grim -g "$(slurp)" ~/Screenshot/$FILENAME.png
