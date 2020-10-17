#!/bin/bash
# E.g
# /usr/local/bin/docker-compose exec -T app ./cron.sh > /home/<your-user>/<path-to-docker-compose.yml>/cron.log 2>&1
/usr/local/bin/docker-compose exec -T app ./cron.sh > /home/grant/site/cron.log 2>&1