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
            else
                flash.now.alert = "Please fill in all the required boxes"
              format.html { render action: 'new'  }
            end
          end

        # @message.request = request
        # respond_to do |format|
        #   if @message.deliver
        #     # re-initialize Home object for cleared form
        #     @contact = Home.new
        #     format.html { render 'index'}
        #     format.js   { flash.now[:success] =  "Thank you for your message. I'll get back to you soon!" }
        #   else
        #     format.html { render 'index' }
        #     format.js   { flash.now[:error] = "Message did not send." }
        #   end

            # if @message.valid?
            #     MailerMailer.contact(@message).deliver_now
            #     redirect_to new_message_url
            #     flash[:notice] = "We have received your message and will be in touch soon!"
            # else
            #     flash[:notice] = "There was an error sending your message. Please try again."
            #     render :new
            # end

    end

    private 

    def message_params
        params.require(:message).permit(:name, :email, :phone_number, :body)
    end
end
