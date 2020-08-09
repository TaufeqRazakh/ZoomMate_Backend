# README

This is the backend for [ZoomMate](gifted-galileo-517037.netlify.app/) which is made for UIUC 2020 [HackThis](https://acm.illinois.edu/hackthis).

You can find the heroku backend [here](https://zmate.herokuapp.com/up).

## JSON Endpoints

* GET `/up` - set if the api is up and get some uptime stats

* GET `/courses` - get the list of all courses

* GET `/courses/:id` - get a course by it's `:id`

* GET `/courses/:course_id/rooms` - get all rooms that belong to a course

* GET `/courses/:course_id/rooms/:id` - get a specific room that belongs to a course. `:id` is a room's primary key in the database

You can also run `rake routes` to see a more complete list of all available routes.

## Setup

1. Install ruby on rails 6. Here is a good [guide](https://gorails.com/setup/ubuntu/18.04) for ruby, git, rails, node, PostgreSQL and all the needed things.

2. `git clone` the repo

3. `cd` into the repo

4. `bundle install` - this sets up all the dependencies

5. `rake db:create` - create the database

6. `rake db:schema:load` - setup the schema

7. `rake db:seed` - setup development data

8. `rails s` - run the server locally at `localhost:3000`


