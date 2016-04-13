#!/bin/bash

## INSTALLING NODE.JS PACKAGES GLOBALLY
## into the `/usr/local/lib/node_modules` folder

# i -> install
# g -> global

sudo -v

packages=(
	coffee-script 
	js2coffee 
	jade 
	html2jade 
	grunt-cli 
	gulp-cli 
	bower 
	yo 
	browser-sync
)

sudo npm i -g "${packages[@]}"