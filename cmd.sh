#!/bin/bash

git clone https://github.com/funnyzak/libreoffice-server.git /app/nodeapp
npm ci --prefix /app/nodeapp
npm start --prefix /app/nodeapp