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

- Add an Image Uploader
  - `Gemfile`
    - `gem "carrierwave"`
    - `gem "fog"`
    - `gem "mini_magick"`
  - `app/uploaders/picture_uploader.rb`
  - In `app/models/image.rb`
    - `mount_uploader :picture, PictureUploader`
