<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400" alt="Laravel Logo"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>

<h2>INSTALACION</h2>

- Editar archivo .env con los parametros:

        DB_CONNECTION=mysql

        DB_HOST=mysql

        DB_PORT=3306

        DB_DATABASE=laravel

        DB_USERNAME=root

        DB_PASSWORD=1234

- Ejecutar composer install

- Generar claves de aplicación con:  php artisan key:generate

- Ejecutar docker-compose up

- Ejecutar npm install && npm run build

- Iniciar la aplicación en localhost:8080

- Cuando lo solicite, ejecutar la migraciones y refrescar pantalla

- Servidor correo MAILHOG para validación de correo y cambio de contraseña: localhost:8025
