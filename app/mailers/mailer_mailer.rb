class MailerMailer < ApplicationMailer
    default from: 'justatestomg@gmail.com'

    def contact
      @name = params[:message][:name]
      @body = params[:message][:body]
      @email = params[:message][:email]
      @phone = params[:message][:phone_number]
      mail(to: "joodeek@gmail.com", subject: @name + ' has contacted us!')
    end

    def auto_reply
      @name = params[:message][:name]
      @body = params[:message][:body]
      @email = params[:message][:email]
      @phone = params[:message][:phone_number]
      mail(to: @email, subject: "We Have Received Your Message!")
    end

    def application
      @params = params[:application]
      mail(to: "joodeek@gmail.com", subject: @params[:lastname] + Application Form!')
    end

    
end
