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
  ...
$ cd <your-app-name-here>
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
$ bin/rails db:migrate
```

On Windows replace bin/ with ruby bin\ anywhere it is used:
```
$ ruby bin\rails db:setup
$ ruby bin\rails db:migrate
```

## Start the app

In your terminal:

```
$ bin/rails server // this ensure the app runs on the version of rails it was initialized with
```

Or, a shortcut:

```
$ bin/rails s
```

Then go to http://localhost:3000/ in your browser to see the rails welcome page.

## Create Rails Resources

First, stop the server by pressing `ctrl+c`.

Then, generate your resource:

```
$ bin/rails generate scaffold Import import_name:string
```

A migration file will be generated in db/migrate that will look like this:

```ruby
class CreateImports < ActiveRecord::Migration[5.2]
  def change
    create_table :imports do |t|
      t.string :import_name

      t.timestamps
    end
  end
end

```

Edit it to look like this:

```ruby
class CreateImports < ActiveRecord::Migration[5.2]
  def change
    create_table :imports do |t|
      t.string :import_name, null: false
      t.index ["import_name"], name: "imports_import_name_key", unique: true

      t.timestamps
    end
  end
end

```

Then, back in the terminal:

```
$ bin/rails db:migrate // needs to be run everytime you generate a scaffold, model, or migration
```

Start the app again:

```
$ bin/rails s
```

Then navigate to http://localhost:3000/imports in your browser.

You can start creating, reading, updating, and deleting imports. Your data will be saved to PostgreSQL.
