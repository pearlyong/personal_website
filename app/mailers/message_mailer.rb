class MessageMailer < ActionMailer::Base

  default from: "Your Mailer <noreply@gmail.com>"
  default to: "Your Name <ong.pearly@gmail.com>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end

end