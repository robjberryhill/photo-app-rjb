# PHOTO APP

`Upgrades for dependencies not supported`

- Add Sendgrid to:
  - `config/environment.rb`
  - `config/environments/development.rb`
  - `config/environments/production.rb`

- Add Stripe to Sign Up:
  - `Gemfile`
  - `config/initializers/stripe.rb`
  - `app/models/payment.rb`
  - `app/views/devise/registrations/new.html.erb`
  - `app/controllers/registrations_controller.rb`
