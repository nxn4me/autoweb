#!/bin/bash

usuario=$(echo $1 | cut -d. -f1)

useradd $usuario -p $(openssl passwd '123') -d /var/www/$usuario
