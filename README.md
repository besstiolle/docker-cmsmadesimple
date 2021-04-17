# docker-cmsmadesimple
A complete set of Multi Containers to test installations or upgrades of CmsMadeSimple and other php tools.

## Configuration

`./dump/`

Every sql file will be imported

`./www/`

Files will be served by php & Apache

`./docker-compose.yml`

change value 2 times if necessary with your own values
 - `MYSQL_USER: user`
 - `MYSQL_PASSWORD: test`


## Build & run it

```
docker-compose build && docker-compose up -d
```

## Test it 

 - http://localhost:80/info.php will simply show you a [php_info()](https://www.php.net/manual/en/function.phpinfo.php) dump
 - http://localhost:80/index.php will retrieve informations from db

 - http://localhost:81/ will serve you a [phpMyAdmin](https://www.phpmyadmin.net/) instance
 - http://localhost:81/ will serve you a [Adminer](https://www.adminer.org/) instance (phpMyAdmin alternative)

## Logs

 - `./logs/httpd/access.log` Access log of Apache
 - `./logs/httpd/error.log` Error log of Apache


## Check health

```
docker inspect --format="{{json .State.Health.Status}}" _ID_
```


Based on the work of : 
 - https://gist.github.com/Beyarz/674b24d03614fde205a38f449800857a
 - https://www.bejean.eu/2020/11/18/apache-et-php-fpm-dans-des-conteneurs-separes/