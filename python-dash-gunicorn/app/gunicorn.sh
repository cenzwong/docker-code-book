#!/bin/sh
gunicorn -w 2 -b 0.0.0.0:80 main:server --chdir /app