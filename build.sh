#!/bin/bash
set -e
docker build '.' --tag 'valonnopea/php:5.2.17-fpm'
docker build '.' --tag 'valonnopea/php:5.2-fpm'
