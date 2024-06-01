#sudo apt-get update
#sudo apt-get install mailutils

#vim disk_space_monitor.sh

#chmod +x disk_space_monitor.sh

#the sell script for disk space checking
THRESHOLD=80

EMAIL="mohamed.elhawary7422@gmail.com"

DISK_USAGE=$(df / | grep / | awk '{ print $5 }' | sed 's/%//g')

if [ "$DISK_USAGE" -gt "$THRESHOLD" ]; then
    SUBJECT="Disk Space Alert: Usage Exceeded $THRESHOLD%"
    MESSAGE="The current disk usage on the root partition is ${DISK_USAGE}%, which exceeds the threshold of ${THRESHOLD}%."
    echo "$MESSAGE" | mail -s "$SUBJECT" "$EMAIL"
fi
