class ContactMailer < ActionMailer::Base
  add_template_helper(EmailHelper)
  default from: "qhhmailer@gmail.com"

  
  def contact_message(name, email, message)
    @name = name
    @email = email
    @message = message

    mail to: "qhhmailer@gmail.com", subject: "New message received at @gmail.com"
  end
end
