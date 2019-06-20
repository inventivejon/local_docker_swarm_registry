#!/bin/sh

envsubst < auth.conf > /etc/nginx/conf.d/auth.conf
envsubst < nginx.conf > /etc/nginx/nginx.conf

nginx -g "daemon off;"
