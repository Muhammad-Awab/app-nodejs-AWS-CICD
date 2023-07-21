#!/bin/bash

pwd
cd /app/
pwd
pm2 start app.js -f
pm2 restart app.js