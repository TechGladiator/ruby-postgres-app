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
