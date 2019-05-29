class MailerMailer < ApplicationMailer
    default from: 'justatestomg@gmail.com'
    default to: "joodeek@gmail.com"

    def contact
      @name = params[:message][:name]
      @body = params[:message][:body]
      @email = params[:message][:email]
      @phone = params[:message][:phone_number]
      mail(subject: 'Someone has contacted us!')
    end

    
end
