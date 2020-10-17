# Laravel Docker
Docker image for Laravel Applications, utilising docker-compose.

## Getting started

- In the top level and in `src` rename `.env.example` to `.env` and configure your credentials.
- Note: `.env.example` is included in two places, one for docker-compose to read and the other for Laravel to read.  
- Clone the latest Laravel into your src folder
- Make sure `DB_CONNECTION=mysql` equals your service name for `mysql`.
- To run commands, use docker-compose exec, e.g: `docker-compose exec app php artisan config:clear`


### Development
Run the following in a terminal:
```shell
    docker-compose -f docker-compose-dev.yml build app
    docker-compose -f docker-compose-dev.yml up -d 
    docker-compose -f docker-compose-dev.yml exec app bash ./install.sh
```


### Production
Run the following in a terminal on your host machine.
```shell
    docker-compose build app
    docker-compose up -d
    docker-compose exec app bash ./install.sh
```


### Running tasks
Run the cron service from your host machine. 

1. On the host machine, and where you have your `docker-compose` uploaded, upload the `run-cron.sh` bash script. 
2. Inside `run-cron.sh` edit the `<your-user>` and `<path-to-docker-compose.yml>` to match your host machine details.
3. On your host machine, edit your crontab by running `sudo crontab -e`
3. Replacing `<your-user>` and `<path-to-docker-compose.yml>` with your host machine details, add and save:  `* * * * * cd /home/<your-user>/<path-to-docker-compose.yml> && bash ./run-cron.sh >> /home/<your-user>/<path-to-docker-compose.yml>/cron.log`. 

    An example of the final crontab, where my user on my host machine is `grant`, and the path where my docker-compose and src folder is located. 
    `* * * * * cd /home/grant/site && bash ./run-cron.sh >> /home/grant/site/cron.log`


