#!/bin/bash

# FastCGI serverni ishga tushurish
spawn-fcgi -a 127.0.0.1 -p 8080 ./mini_server

# Nginx fon rejimida ishga tushadi
nginx -g 'daemon off;'
