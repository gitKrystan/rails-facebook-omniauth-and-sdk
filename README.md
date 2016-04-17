# Omniscient

##### By Krystan Menne and Kyle Langley

Omniscient is a sample app that allows a user to log in with Facebook omniauth (using Devise) and post to their Facebook feed with the Facebook Graph API (using RestClient).

## Prerequisites
* Ruby 2.2.2 or greater
* Rails 4.2.6 or greater
* PostgreSQL

## Installation
1. `$ git clone` this repository
1. Change into the new directory
1. `$ bundle install`
1. Create database and run migrations
  1. `$ rake db:create`
  1. `$ rake db:migrate`
  1. `$ rake db:test:prepare`
1. Add a .env file as follows:
```
FB_APP_ID=your_app_id
FB_APP_SECRET=your_app_secret
```

## Running / Development
1. `$ rails serve`
1. Visit your app at [http://localhost:3000](http://localhost:3000).

## License
Copyright (c) 2016 Krystan Menne and Kyle Langley
This software is licensed under the MIT license.
