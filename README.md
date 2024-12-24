# 🚀 Laravel Docker Starter 

## Hey 👋
Hey, I'm Grant, A Freelance Software Developer. I help agencies, startups, and individuals stand out by creating exceptional websites, mobile apps, and digital experiences. Based in Surrey, I work with clients in London and internationally, providing flexible, tailored solutions for every project.

If you're looking for a mobile app, a responsive website, or a unique digital solution, I'm here to deliver standout results crafted to your needs.  Say hi 👋  [Get in touch](https://grant-bartlett.com/)

## About this project
Intended to just be a simple docker starter for starting a new Laravel project. 

It utilises official docker images with docker-compose. 
See `docker-compose.yml` and `docker/Dockerfile` to see whats going on under the hood.

- `nginx:stable-alpine`
- `mysql`
- `php:7.4-fpm`

### Getting started & configuration 

- Create a Laravel project. `composer create-project laravel/laravel src`, or clone the latest git project from Laravel into a new folder called `src`.
- Copy our env example `cp ./.env.example` to `./src/.env`. Open and edit MYSQL details, specifically username, database and password as you require.
- Now build our docker image and spin up. 
```bash
docker-compose build
docker-compose up
```
- Next install composer packages and generate a key for Laravel:
```bash
composer install
php artisan key:generate
```
- Finally open up http://localhost 

### Development 
Steps you can repeat whenever you need to build or re-launch your site.
```shell
docker-compose build
docker-compose up
```
