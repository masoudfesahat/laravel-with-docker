#!/bin/sh

# Install Laravel
mkdir -p src
docker compose run --rm composer create-project laravel/laravel src

# Move all files including hidden ones
cd src && tar cf - . | (cd .. && tar xf -)

# Update the .env file with MySQL and Redis configuration
sed -i 's/^DB_CONNECTION=.*/DB_CONNECTION=mysql/' .env
sed -i 's/^# DB_HOST=.*/DB_HOST=mysql/' .env
sed -i 's/^# DB_PORT=.*/DB_PORT=3306/' .env
sed -i 's/^# DB_DATABASE=.*/DB_DATABASE=homestead/' .env
sed -i 's/^# DB_USERNAME=.*/DB_USERNAME=homestead/' .env
sed -i 's/^# DB_PASSWORD=.*/DB_PASSWORD=secret/' .env

# Update REDIS_HOST
sed -i 's/^REDIS_HOST=127.0.0.1/REDIS_HOST=redis/' .env
sed -i 's/^# REDIS_HOST/REDIS_HOST/' .env

# Update Cache 
sed -i 's/CACHE_STORE=database/CACHE_STORE=file/' .env 
sed -i 's/LOG_CHANNEL=stack/LOG_CHANNEL=daily/' .env 
