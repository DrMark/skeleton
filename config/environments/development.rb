# Settings specified here will take precedence over those in config/environment.rb

# In the development environment your application's code is reloaded on
# every request.  This slows down response time but is perfect for development
# since you don't have to restart the webserver when you make code changes.
config.cache_classes = false

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_view.debug_rjs                         = true
config.action_controller.perform_caching             = false

# Don't care if the mailer can't send
config.action_mailer.raise_delivery_errors = false

# This configuration relies upon having the Mailtrap gem installed.
# Mailtrap is a mock SMTP server for use in Rails development.
# The mailtrap gem intercepts all email and writes it to a file.
# By default it creates an SMTP server on localhost port 2525 that writes 
# messages into /var/tmp/mailtrap.log. If you're happy with the default you can
# be up and running with:
#
#  sudo gem install -y mailtrap
#  mailtrap start
# Application variables:
APP_DOMAIN = 'localhost:3005'
APP_URL = 'http://localhost:3005'

ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.raise_delivery_errors = true
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :domain => "#{APP_DOMAIN}",
  :address => "localhost",
  :port => 2525,
}