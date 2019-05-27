class MailerMailer < ApplicationMailer
    default from: 'justatestomg@gmail.com'

    def contact
      @name = params[:message][:name]
      @body = params[:message][:body]
      @email = params[:message][:email]
      @phone = params[:message][:phone_number]
      mail(to: "joodeek@gmail.com", subject: 'Someone has contacted us!')
    end

    
end
