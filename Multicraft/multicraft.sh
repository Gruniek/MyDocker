#!/bin/bash

case "$1" in
'start')

  if [ $2 = "autoreboot" ]
then


while :
do
  echo "Press <CTRL+C> to exit."
    java -Xms512M -Xmx512M -jar $2 nogui

done
else
  echo "Starting application"
  java -Xms512M -Xmx512M -jar $2 nogui
fi





;;
'update')
echo "Update the application"

;;
esac
