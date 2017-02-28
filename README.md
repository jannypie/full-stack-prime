# full-stack-prime

## Installation
- requires Ruby >= 2.2.2
- `cd /app`
- `bundle install`
- `rails db:migrate`

## To run app
- `rails runner app/controllers/application_controller.rb`
- `rails test test/models/generator_test.rb`
- `rails test test/models/interface_test.rb`


If time allows:
- refactor interface.rb
- generator doesn't accept backwards params (90,3)
- generator will accept negative numbers
