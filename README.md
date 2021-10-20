# README

## Development setup

Clone the repository and install ruby 3.0.2. Then run following commands in app directory:

```
$ bundle install
$ bundle exec rails db:create db:migrate db:seed
$ bundle exec rails s
```

Now go to localhost:3000 and you should see simple table filled with trainees

## Goal

Please do not modify the DB structure or DB data created by db:seed.

* Make the table data dynamic and fetch it from the DB.
* Implement the search form according to prepared inputs.
* Implement edit action where you can update trainee information: first name, last name, email, birthdate and status
* Implement new view for adding trainee and assigning it to courses.

Once finished please upload your code onto your github account and send us repo link.
