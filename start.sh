echo "Scheduling posting at: ${CRON}"
CRON_CMD="${CRON} bash create-file.sh"
echo "$CRON_CMD" > crontab.txt

crontab crontab.txt
crond -f
