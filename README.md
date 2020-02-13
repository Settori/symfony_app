# Second task

This package contains website created with **Symfony 4.4**.

## Requirements
- Composer
- Symfony
- PHP >= 7.2
- MySQL server

## Installation

Go to app root directory and type this into terminal. This command will install required dependences.

```bash
composer update
```
Then edit **.env** file. Find line contains **DATABASE_URL** and edit it to the followings

```bash
DATABASE_URL=mysql://DB_USERNAME:DB_PASSWORD@DB_ADDRESS:DB_PORT/project_auth?serverVersion=5.7
```
Where: 
- DB_USERNAME is your mysql username
- DB_PASSWORD is your mysql password
- DB_ADDRESS is your mysql address
- DB_PORT is your mysql port

Create database named **project_auth** and fill it using **database.sql** file.

```bash
php bin/console doctrine:database:create
php bin/console doctrine:database:import project_auth.sql
```

## Usage

In app root directory

```bash
php bin/console server:start
```
Now you can go to the url **127.0.0.1:8000** and start using this application.
