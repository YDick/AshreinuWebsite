class MailerMailer < ApplicationMailer
    default from: 'justatestomg@gmail.com'

    def contact
      @body = 'hey'
      mail(to: "joodeek@gmail.com", subject: 'Contact Us Reply')
    end

    
end
