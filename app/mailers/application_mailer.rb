# app/mailers/application_mailer.rb

class ApplicationMailer < ActionMailer::Base
  default from: "mailer@devcamp.com"
  layout 'mailer'
end