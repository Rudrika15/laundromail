
#!/bin/sh
set -e

echo "Deploying application ..."

# Enter maintenance mode
php artisan down
    # Install dependencies based on lock file
    # composer install --no-interaction --prefer-dist --optimize-autoloader

    # Migrate database
    # php artisan migrate --force

    # Note: If you're using queue workers, this is the place to restart them.
    # ...

    # Clear cache
    php artisan route:clear
    php artisan config:cache
# Exit maintenance mode
php artisan up

echo "Application deployed!"
