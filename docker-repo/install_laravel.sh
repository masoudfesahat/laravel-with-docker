#!/bin/sh

# Install Laravel
mkdir -p src
docker compose run --rm composer create-project laravel/laravel src

# Move all files including hidden ones
cd src && tar cf - . | (cd .. && tar xf -)
