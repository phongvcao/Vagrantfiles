#!/usr/bin/env bash

echo "Installing Apache and setting it up..."

ping google.com -c 10

pacman-db-upgrade
pacman -Syy
pacman -S --noconfirm apache

rm -rf /var/www
ln -fs /vagrant /var/www
