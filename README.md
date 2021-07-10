# Fruit Schema with Ruby on Rails

This project is a basic attempt to create multiple schema in the Postgresql Database.

## Requirements
* Ruby version -- `2.7.2`
* Configuration  -- Postgres must be installed

## Installation
* RUN `git checkout schema_models`
* RUN `gem install bundler:2.1.4 && bundle install`
* RUN `cp config/database.example.yml config/database.yml`
* Add database config in `config/database.yml`
* Database creation - `rake db:create`
* Database initialisation - `rake db:migrate`
* Launch `rails console` and run `Apple.schema_names`
