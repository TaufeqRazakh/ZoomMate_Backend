# README

This is the backend for [ZoomMate](http://gifted-galileo-517037.netlify.app/) which is made for UIUC 2020 [HackThis](https://acm.illinois.edu/hackthis).

You can find the heroku backend [here](https://zmate.herokuapp.com/up).

## JSON Endpoints

#### Status

* GET `/up` - set if the api is up and get some uptime stats


#### Register

* POST `/auth` with a params -
email, password, password_confirmation
```json
{
  "email": "test@email.com",
  "password": "password",
  "password_confirmation": "password"
}
```
keep returned header

#### Sign In

* POST `/auth/sign_in` with params - email, password to sign in registered user
```json
{
  "email": "test@email.com",
  "password": "password",
}
```
keep returned header

#### Sign Out

* DELETE `/auth/sign_out` with headers from user register or sign in

#### Create a student

* POST `/students` with email param that is already registered
```json
{
	"email": "testmail@gmail.com"
}
```  

#### Create a course

* POST `/courses` with name and professor as params
```json
{
	"name": "MASC 515",
	"professor": "Dr. K. Knomura"
}
```

#### Enroll student in a course
* POST `/students/:student_id/enrollments` with course_id as params
```Json
{
	"course_id": "1"
}
```

#### Create room for a courses
* POST `/courses/:course_id/rooms` with notice_board and i-cal as params
```JSON
{
	"notice_board": "Discussion",
	"i_cal": {
  "vcalendar": [
    {
      "description": "This is an iCal import for fall 2020 classes",
      "prodid": "-//University of Southern California//NONSGML myUSC//EN",
      "calscale": "GREGORIAN",
      "version": "2.0",
      "x-wr-calname": "fall 2020 Classes",
      "method": "PUBLISH",
      "vtimezone": [
        {
          "tzid": "America/Los_Angeles",
          "daylight": [
            {
              "tzoffsetfrom": "-0800",
              "rrule": {
                "freq": "YEARLY",
                "bymonth": "3",
                "byday": "2SU"
              },
              "dtstart": "20200308T020000",
              "tzname": "PDT",
              "tzoffsetto": "-0700"
            }
          ],
          "standard": [
            {
              "tzoffsetfrom": "-0700",
              "rrule": "FREQ=YEARLY;BYMONTH=11;BYDAY=1SU",
              "dtstart": "20201101T020000",
              "tzname": "PST",
              "tzoffsetto": "-0800"
            }
          ]
        }
      ],
      "vevent": [
        {
          "created": "20200821T205821",
          "uid": "20203-30056-1598068701-0@my.usc.edu",
          "rrule": {
            "freq": "WEEKLY",
            "interval": "1",
            "until": "20201209T000000",
            "byday": "MO",
            "we": null
          },
          "exdate": [
            [
              "20200907T153000",
              "20201125T153000"
            ],
            {
              "tzid": "America/Los_Angeles"
            }
          ],
          "dtend": [
            "20200824T165000",
            {
              "tzid": "America/Los_Angeles"
            }
          ],
          "transp": "OPAQUE",
          "summary": "CSCI 596: Scientific Computing and Visualization (Lecture)",
          "dtstart": [
            "20200824T153000",
            {
              "tzid": "America/Los_Angeles"
            }
          ],
          "dtstamp": [
            "20200821T205821",
            {
              "tzid": "America/Los_Angeles"
            }
          ],
          "location": "Online",
          "sequence": "0"
        },
        {
          "created": "20200821T205821",
          "uid": "20203-30146-1598068701-1@my.usc.edu",
          "rrule": {
            "freq": "WEEKLY",
            "interval": "1",
            "until": "20201209T000000",
            "byday": "FR"
          },
          "exdate": [
            [
              "20201127T153000"
            ],
            {
              "tzid": "America/Los_Angeles"
            }
          ],
          "dtend": [
            "20200828T165000",
            {
              "tzid": "America/Los_Angeles"
            }
          ],
          "transp": "OPAQUE",
          "summary": "CSCI 596: Scientific Computing and Visualization (Discussion)",
          "dtstart": [
            "20200828T153000",
            {
              "tzid": "America/Los_Angeles"
            }
          ],
          "dtstamp": [
            "20200821T205821",
            {
              "tzid": "America/Los_Angeles"
            }
          ],
          "location": "Online",
          "sequence": "0"
        }
      ]
    }
  ]
}

}
```

## Setup

1. Install ruby on rails 6. Here is a good [guide](https://gorails.com/setup/ubuntu/18.04) for ruby, git, rails, node, PostgreSQL and all the needed things.

2. `git clone` the repo

3. `cd` into the repo

4. `bundle install` - this sets up all the dependencies

5. `rake db:create` - create the database

6. `rake db:schema:load` - setup the schema

7. `rake db:seed` - setup development data

8. `rails s` - run the server locally at `localhost:3000`
