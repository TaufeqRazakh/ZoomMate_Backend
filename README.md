# README

This is the backend for [ZoomMate](http://gifted-galileo-517037.netlify.app/) which is made for UIUC 2020 [HackThis](https://acm.illinois.edu/hackthis).

You can find the heroku backend [here](https://zmate.herokuapp.com/up).

## JSON Endpoints

* GET `/up` - set if the api is up and get some uptime stats

* GET `/courses` - get the list of all courses

* GET `/courses/:id` - get a course by it's `:id`

* GET `/courses/:course_id/rooms` - get all rooms that belong to a course

* GET `/courses/:course_id/rooms/:id` - get a specific room that belongs to a course. 
  `:id` is a room's primary key in the database
  
* GET `/user/:id` - that shows the user info

* GET `/user/:id/courses` - shows which courses they're in 

* GET `/user/:id/available_rooms `which basically shows all the rooms that can be visible to the user by Course
  
* POST `/courses` with a JSON body to create a course and returns the created course info in the db
```json
{
	"course": {
		"name": "CS478 Elixir",
		"professor": "Harsh Deep",
		"notice_board": "Lecture WF 12-2pm"
	}
}
```
which returns
```json
{
  "id": 42,
  "name": "CS478 Elixir",
  "professor": "Harsh Deep",
  "notice_board": "Lecture WF 12-2pm",
  "created_at": "2020-08-12T21:35:41.558Z",
  "updated_at": "2020-08-12T21:35:41.558Z"
}
```

* POST `/courses/:id/enroll` with a JSON body that has the `user_id` and returns all courses the user has
```json
{
	"user_id": 1
}
```
which returns
```json
[
  {
    "id": 1,
    "name": "CS 125",
    "professor": "Geoff Challen",
    "notice_board": "Lectures every MWF 11am",
    "created_at": "2020-08-09T11:22:02.805Z",
    "updated_at": "2020-08-09T11:22:02.805Z"
  },
  {
    "id": 2,
    "name": "MATH 20",
    "professor": "Suzie Macejkovic I",
    "notice_board": "Exercitationem itaque maxime. Neque ut et. Delectus veritatis et.",
    "created_at": "2020-08-09T11:22:02.911Z",
    "updated_at": "2020-08-09T11:22:02.911Z"
  },
  {
    "id": 40,
    "name": "CS110 Ruby",
    "professor": "Harsh Deep",
    "notice_board": "Lecture WF 12-2pm",
    "created_at": "2020-08-12T19:55:39.292Z",
    "updated_at": "2020-08-12T19:55:39.292Z"
  }
]
```

* POST `/auth` with a params - 
email, password, password_confirmation to register a user
```json
{
  "email": "test@email.com",
  "password": "password",
  "password_confirmation": "password"
}
```
keep returned header
 
* POST `/auth/sign_in` with params - email, password to sign in registered user
```json
{
  "email": "test@email.com",
  "password": "password",
}
```
keep returned header

* DELETE `/auth/sign_out` with headers from user register or sign in

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


