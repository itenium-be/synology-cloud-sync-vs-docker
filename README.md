Synology CloudSync vs Docker
============================

Sync files generated by a docker job with Synology CloudSync.

## Configure .env

```ini
# Configure with https://crontab.guru
CRON="* * * * *"

# The synology dir that is being synced with CloudSync
# And where you want save the generated files
SYNC_DIR=/volume1/sync-dir/shared-with-3rd-party
```

## Configure Synology

- Control Panel > File Services > NFS > Enable
- Control Panel > Shared Folder > Right Click "sync-dir" > Edit > NFS Permissions
  - Create > Hostname or IP: 127.0.0.1 > Save

Or see `steps` for the image-version.

## And start

Make `create-file.sh` do something.

```sh
docker-compose up -d --build
```
