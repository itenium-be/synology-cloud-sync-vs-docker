echo "Scheduling posting at: ${CRON}"
CRON_CMD="${CRON} bash /usr/scheduler/create-file.sh"
echo "$CRON_CMD" > crontab.txt

crontab crontab.txt
crond -f
