# Deploy to Heroku example

This is a rails project with one model, Book. When you click the Deploy to
Heroku button the postdeploy script will grab a seeds.rb file from the Internet
and then use that when invoking rake db:setup to load the seed data.

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

## The app.json file
The only thing in app.json is a call to a custom rake task
`bundle exec rake admin:finish`

## Custom rake task
Look in `/lib/tasks/finish.rake` to see the code for the custom rake task.
