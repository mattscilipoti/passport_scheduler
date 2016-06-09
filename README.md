Passport Scheduler
================

Tool to assist with scheduling classes.

[![Planning](https://badge.waffle.io/mattscilipoti/passport_scheduler.svg?label=ready&title=Planning-On Deck)](http://waffle.io/mattscilipoti/passport_scheduler) [ ![Codeship Status for mattscilipoti/passport_scheduler](https://codeship.com/projects/089a0130-1083-0134-9c2b-728415b5360a/status?branch=master)](https://codeship.com/projects/157008)

For Developers
-----------------

- Using Klass (internally) to represent a student's class.
- Recommend you review the [gotchas of Rails enum](https://hackhands.com/ruby-on-enums-queries-and-rails-4-1/)

### Administrate (admin tool)

- To generate for new model.
  1. Add route to 'admin' namespace
  2. `$ rails generate administrate:install`

- Supports custom EnumField.  Supports assigning AR enums. e.g. Klass.status

### Deployment

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

### Rails App Composer

This application was generated with the [rails_apps_composer](https://github.com/RailsApps/rails_apps_composer) gem
provided by the [RailsApps Project](http://railsapps.github.io/).

Rails Composer is supported by developers who purchase our RailsApps tutorials.

Problems? Issues?
-----------

Need help? Ask on Stack Overflow with the tag 'railsapps.'

Your application contains diagnostics in the README file. Please provide a copy of the README file when reporting any issues.

If the application doesn't work as expected, please [report an issue](https://github.com/RailsApps/rails_apps_composer/issues)
and include the diagnostics.

Ruby on Rails
-------------

This application requires:

- Ruby 2.3.1
- Rails 4.2.6

Learn more about [Installing Rails](http://railsapps.github.io/installing-rails.html).

Getting Started
---------------

Documentation and Support
-------------------------

Issues
-------------

Similar Projects
----------------

Contributing
------------

Credits
-------

License
-------
