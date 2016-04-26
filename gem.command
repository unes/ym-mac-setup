#!/bin/bash

# Update 
sudo gem update --system

# Cleaning after updating
gem cleanup

gems=(
	bundler 
	haml 
	sass 
	compass 
	jekyll 
	middleman
)

sudo gem install "${gems[@]}"
