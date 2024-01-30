#!/bin/bash

if [ "$MIGRATE" == "true" ] 
then
  php artisan migrate
fi

if [ "$SEED" == "true" ]
then
  php artisan db:seed
fi

php artisan serve --host=0.0.0.0