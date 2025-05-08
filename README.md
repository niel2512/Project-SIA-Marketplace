<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

## Tools
PHP 8.4+
Laravel v10.0+

## Installation

Clone the repo locally:

```sh
git clone https://github.com/niel2512/Project-SIA-Marketplace.git
```

```sh
composer install
```

Setup configuration:

```sh
cp .env.example .env
```

Edit .env `DB_DATABASE = "your database name here"`

Generate application key:

```sh
php artisan key:generate
```

Run database migrations:

```sh
php artisan migrate
```

Run the dev server (the output will give the address):

```sh
php artisan serve
```

#### OPTIONAL
Run `tokomukena.sql` to locally 
