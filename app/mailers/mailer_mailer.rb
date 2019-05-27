class MailerMailer < ApplicationMailer
    default from: 'justatestomg@gmail.com'

    def contact
      @body = params[:message][:body]
      @email = params[:message][:email]
      @phone = params[:message][:phone]
      mail(to: "joodeek@gmail.com", subject: 'Someone has contacted us!')
    end

    
end
