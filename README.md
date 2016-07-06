Passport Scheduler
================

Tool to assist with scheduling classes.

[![Planning](https://badge.waffle.io/mattscilipoti/passport_scheduler.svg?label=ready&title=Planning-On Deck)](http://waffle.io/mattscilipoti/passport_scheduler)
[![Code Climate](https://codeclimate.com/github/mattscilipoti/passport_scheduler/badges/gpa.svg)](https://codeclimate.com/github/mattscilipoti/passport_scheduler)
[![Test Coverage](https://codeclimate.com/github/mattscilipoti/passport_scheduler/badges/coverage.svg)](https://codeclimate.com/github/mattscilipoti/passport_scheduler/coverage)
[ ![Codeship Status for mattscilipoti/passport_scheduler](https://codeship.com/projects/089a0130-1083-0134-9c2b-728415b5360a/status?branch=master)](https://codeship.com/projects/157008)

We're Dockerized!
-----------------

All dependencies for this project are provided in (and isolated within) docker containers.  This means you only need to [install Docker](https://docs.docker.com/engine/installation/).  You don't need rvm, postgresql, etc.  Just docker.
> Note: as of June 2016, Docker provides native installation for Linux, OSX, and Windows.  You do NOT need VirtualBox (or equivalent).

1. build and run the container
  ```
  $ docker build -t greatenough/passport_scheduler_rails .
  $ docker run -itP -p 80:3000  greatenough/passport_scheduler_rails
  ```

2. Browse to http://localhost.

Questions?  See [Running a Rails Development Environment in Docker](https://blog.codeship.com/running-rails-development-environment-docker/).

For Developers
-----------------

- Using Klass (internally) to represent a student's class.
- Recommend you review the [gotchas of Rails enum](https://hackhands.com/ruby-on-enums-queries-and-rails-4-1/)

### Metrics

- CodeClimate: uses Docker to run many Metrics,
   ```
   $ codeclimate analyze
  ```

### Administrate (admin tool)

- To generate for new model.
  1. Add route to 'admin' namespace
  2. `$ rails generate administrate:install`

- Supports custom EnumField.  Supports assigning AR enums. e.g. Klass.status

### Deployment

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

### Rails App Composer

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).  See RailsComposer.log

Rails Composer is supported by developers who purchase our RailsApps tutorials.

Problems? Issues?
-----------

Need help? Create an [issue on Github](https://github.com/mattscilipoti/passport_scheduler/issues/new).


Ruby on Rails
-------------

This application requires:

- Ruby 2.3.1
- Rails 4.2.6

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------

Standard setup for a rails app.
```
$ rake db:setup
```

Documentation and Support
-------------------------
TBD

Issues
-------------
https://github.com/mattscilipoti/passport_scheduler/issues

Contributing
------------
Standard GitHub steps: create an issue, fork, and create a Pull Request.

Credits
-------
TBD

License
-------
The MIT License (MIT)

Copyright (c) 2016 Matthew Scilipoti

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
