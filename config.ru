#!/usr/bin/env rackup
# encoding: utf-8

# config.ru
require 'rubygems'
require 'sinatra'
require 'bundler'

Bundler.require #loads all required gems.

# Passenger specific code
# set :environment, ENV['RACK_ENV'].to_sym
# disable :run, :reload

# Dot Env. 
# Dotenv.load

#Runs the Sinatra App
require './app/main.rb'
  run TransCriolloWebAPI
