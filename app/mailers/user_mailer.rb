class UserMailer < ApplicationMailer
  default from: "srikanth.pothedar@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
         to: "srikanth.pothedar@gmail.com",
         subject: "A new contact form message from #{name}")
  end

  def welcome(user)
    @appName = "Bike Shop"
    mail(to: user.email,
        subject: "Welcome to #{@appName}")
  end
end