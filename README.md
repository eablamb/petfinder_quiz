# Petfinder Quiz

Webapp for a Petfinder based cat-matching quiz

## Installation

### Heroku

If you're using heroku, see https://devcenter.heroku.com/articles/getting-started-with-rails5#local-setup

### Setup

1. Create DBs
```bash
bundle exec rails db:create
```
2. Add credentials
```bash
EDITOR="vim" bundle exec rails credentials:edit
```
You will need these credentials
```yml
petfinder:
  client_id: <your_client_id>
  client_secret: <your_client_secret>
```
3. Add Ruby buildpack
```bash
heroku buildpacks:add --index 2 https://github.com/heroku/heroku-buildpack-ruby
```
4. Precompile production assets
```
RAILS_ENV=production bundle exec rake assets:precompile
```
5. Push to heroku
```bash
git push heroku master
```
