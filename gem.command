#!/bin/bash

sudo -v

# Update 
gem update --system

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
