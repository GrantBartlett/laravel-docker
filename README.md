# Laravel Docker
Docker image for Laravel Applications, utilising docker-compose.

## Getting started

- In the top level and in `src` rename `.env.example` to `.env` and configure your credentials.
- Note: `.env.example` is included in two places, one for docker-compose to read and the other for Laravel to read.  
- Clone the latest Laravel into your src folder
- Make sure `DB_CONNECTION=mysql` equals your service name for `mysql`.
- To run commands, use docker-compose exec, or enter the docker container: `docker-compose exec app php artisan config:clear`


### Development
Run the following in a terminal:
```shell
    docker-compose -f docker-compose-dev.yml build app
    docker-compose -f docker-compose-dev.yml up -d 
    docker-compose -f docker-compose-dev.yml exec app ./install.sh
```


### Production
Run the following in a terminal:
```shell
    docker-compose build app
    docker-compose up -d
    docker-compose exec app ./install.sh
```