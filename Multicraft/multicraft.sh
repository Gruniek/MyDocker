#!/bin/bash

case "$1" in
'start')
echo "Starting application"
java -Xms512M -Xmx512M -jar $2 nogui"
;;
'update')
echo "Update the application"

;;
esac
