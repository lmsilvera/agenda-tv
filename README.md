# Agenda Tv

Reminds you TV shows you love.

## Installation

run:
```
bundle install
rails db:create
rails db:migrate
rails db:seed
rails s
```

to test mail you can install mailcatcher and check them:
```
gem install mailcatcher
mailcatcher
```
and open http://127.0.0.1:1080/


For the mail reminder:
```
bundle exec whenever --update-crontab
crontab
```
