Ruby PostgreSQL App
===================

## Getting Started

To get started, make sure you have PostgreSQL and Ruby installed on your local machine.

If you haven't already, download and install (following instructions pertaining to your system):

PostgreSQL: https://www.postgresql.org/download/

Ruby: https://www.ruby-lang.org/en/downloads/

Node.js: https://nodejs.org/

## Installing Rails

```
$ gem install rails
```

## Creating a new Rails app using PostgreSQL

```
$ rails new <your-app-name-here> -d postgresql
```

## Setup the database

On Linux enter this in your terminal:
```
$ sudo -u postgres createuser --superuser <local_dev_username>
```

Edit `config/database.yml` to look similar to this:

```
default: &default
  adapter: postgresql
  encoding: unicode
  pool: 5

development:
  <<: *default
  database: your-app-name-here_development
  username: <local_dev_username>

test:
  <<: *default
  database: your-app-name-here_test
  username: <local_dev_username>

production:
  <<: *default
  database: your-app-name-here_production
  username: <deploy-username>
```

Again, in the terminal enter:

```
$ bin/rails db:setup
```

### Create Rails Resources

Edit `config/routes.rb` to resemble this:
```
Rails.application.routes.draw do
  resources :records
end
```

This will setup the conventional routes that most Rails resources will have.

Enter this into the terminal:

```
$ bin/rails routes
```

This results in:

```
                   Prefix Verb   URI Pattern                                                                              Controller#Action
                  records GET    /records(.:format)                                                                       records#index
                          POST   /records(.:format)                                                                       records#create
               new_record GET    /records/new(.:format)                                                                   records#new
              edit_record GET    /records/:id/edit(.:format)                                                              records#edit
                   record GET    /records/:id(.:format)                                                                   records#show
                          PATCH  /records/:id(.:format)                                                                   records#update
                          PUT    /records/:id(.:format)                                                                   records#update
                          DELETE /records/:id(.:format)                                                                   records#destroy
```

Then in the terminal:
```
bin/rails db:setup
```

## Start the app

```
$ cd <your-app-name-here>
$ bin/rails server // this ensure the app runs on the version of rails it was initialized with
```

On Windows replace bin/ with ruby bin\ anywhere it is used:
```
$ ruby bin\rails server
```

Then navigate to http://localhost:3000 to see the app's welcome page.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
