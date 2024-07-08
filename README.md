## Laravel with docker and make commad

Hey everyone

I wanted to share a Docker setup that easily brings up Laravel without any hassle—no need for Laravel Sail or anything else. Plus, I wanted to use the `make` command without constantly going into Docker or attaching to it.

### Getting Started

So, I decided to build this, and I absolutely love it. Everything is super simple. Just enter these commands in order:

```bash
make up
make install-laravel
```

That's it. Yep, it's that simple. I've set up everything you need to work with a Laravel project, like:

* nginx
* mysql
* redis
* phpmyadmin
* npm

I even added a couple of cool features to make things easier:

1. You don’t need to go inside the container to work with artisan. Just use this command:
```bash
make art ...
```
For example:
```bash
make art route:list
```
And I did the same for composer. You can use it easily like this:
```bash
make composer ...
```
2. Here's another cool thing you might like. Cleaning up your code with a standard format. I set this up with pint.

```bash
make pint format
```
To check all files, use this command:
```bash
make pint format-all
```

For testing the project, you can easily use this command:
```bash
make test ...
```
other command: 

```bash
build             run docker compose build
ps                docker compose ps
up                docker compose up
down              docker compose down
down-volumes      docker compose down with volumes
restart           docker compose restart
composer-install  composer install
composer          run composer commands
tinker            artisan tinker
art               run artisan command
npm               run npm command
migration         make a new migration
migrate           run artisan migrate
horizon           run horizon
install-laravel   Download source Laravel and update .env file
pint              format codes with pint
test              run tests
```

## License

Overall, I got a lot of these ideas from this engineer and made some improvements myself. Their work was really amazing.
[Reza Khademi](https://github.com/rezakhademix)
