class UserMailer < ApplicationMailer
  default from: "srikanth.pothedar@gmail.com"

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
         to: 'ponnasushma@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end