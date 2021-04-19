# docker-cmsmadesimple

A complete set of Docker's containers to test installations or upgrades of CmsMadeSimple provided with various tools like : 
 - phpmyadmin
 - adminer

## Configuration

### Default values

The defaults values are setted for the last version of [CmsMadeSimple](https://cmsmadesimple.org)

 - PHP_VERSION=7.0.x (7.0.30 at date)
 - MYSQL_VERSION=5.5.x (5.5.62 at date)
 - MYSQL_DATABASE=myDb
 - MYSQL_USER=user
 - MYSQL_PASSWORD=test
 - MYSQL_ROOT_PASSWORD=test

### Env configuration

To customise your environment's values you can rename the file `.env-example` to `.env` and customize its values.

> Be aware that the parameter `MYSQL_DATABASE` is necessary, it used to grant access to your database for your db `MYSQL_USER`


### Directories

`./dump/`

Every sql file will be imported when you starts your containers

`./www/`

Files will be served by php & Apache

`./logs/`

You'll find log for Apache access & error


## Build & run it

```
docker-compose build && docker-compose up -d
```

## Test it 

 - http://localhost:80/_info.php will simply show you a [php_info()](https://www.php.net/manual/en/function.phpinfo.php) dump
 - http://localhost:80/_db.php will retrieve informations from db with the defaults values

 - http://localhost:81/ will serve you a [phpMyAdmin](https://www.phpmyadmin.net/) instance
 - http://localhost:82/ will serve you a [Adminer](https://www.adminer.org/) instance (phpMyAdmin alternative)

## Logs

 - `./logs/httpd/access.log` Access log of Apache
 - `./logs/httpd/error.log` Error log of Apache

## Credits

Based on the work of : 
 - https://gist.github.com/Beyarz/674b24d03614fde205a38f449800857a
 - https://www.bejean.eu/2020/11/18/apache-et-php-fpm-dans-des-conteneurs-separes/