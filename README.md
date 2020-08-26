# rails-template

## Usage

```sh
$ bundle config set path 'vendor/bundle' && bundle install --jobs=4
$ bundle exec rails new /path/to/app -m template.rb -d database_type -T --skip-gemfile --skip-webpack-install
# if you like to skip to use libraries, add options below
# `--skip-turbolinks`
# `--skip-active-storage`
# `--skip-action-cable`
# `--skip-action-text`
```
