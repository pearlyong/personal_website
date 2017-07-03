class MessageMailer < ActionMailer::Base

  default from: "Your Mailer <peggemite@gmail.com>"
  default to: "Your Name <peggemite@gmail.com>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end

end