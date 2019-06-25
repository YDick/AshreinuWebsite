class MessagesController < ApplicationController

    def new
        @message = Message.new
    end

    def create
        @message = Message.new(message_params)

        respond_to do |format|
            if @message.valid?
              MailerMailer.with(message: params[:message]).contact.deliver
              format.html {redirect_to(root_path) }
              MailerMailer.with(message: params[:message]).auto_reply.deliver    
              format.html 
            else
              flash.now.alert = "Please fill in all the required boxes"
              format.html { render action: 'new'  }
            end
          end
    end

    def apply
      @apply = Application.new
      render "apply.html.erb"
    end

    def postapply
      @apply = Application.new(application_params)

      respond_to do |format|
          if @message.valid?
            MailerMailer.with(message: params[:message]).contact.deliver
            format.html {redirect_to(root_path) }
            MailerMailer.with(message: params[:message]).auto_reply.deliver    
            format.html 
          else
            flash.now.alert = "Please fill in all the required boxes"
            format.html { render action: 'new'  }
          end
        end

    end

    private 
    def message_params
        params.require(:message).permit(:name, :email, :phone_number, :body)
    end

    def application_params
      params.require(:application)
    end
end
