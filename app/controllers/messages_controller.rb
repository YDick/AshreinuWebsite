class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    respond_to do |format|
      if @message.valid?
        MailerMailer.with(message: params[:message]).contact.deliver
        format.html { redirect_to(root_path) }
        MailerMailer.with(message: params[:message]).auto_reply.deliver
        format.html
        puts "Success"
      else
        puts "Please fill in all the required boxes"
        format.html { render action: "new" }
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
      if @apply.valid?
        MailerMailer.with(application: params[:application]).application.deliver
        puts "success"
        format.html { redirect_to(root_path) }
        flash.alert = "Please fill in all the required boxes"
      else
        flash.now.alert = "Please fill in all the required boxes"
        puts "failure" 
        format.html { render action: "apply"}
      end
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :phone_number, :body)
  end

  def application_params
    params.require(:application).permit(:firstname,
                                :lastname,
                                :hebname,
                                :DOB,
                                :place_of_birth,
                                :age,
                                :grade,
                                :school,
                                :address,
                                :city,
                                :prov,
                                :ZIP,
                                :home_phone,
                                :camper_cell,
                                :camper_email,
                                :emg_contact,
                                :emg_contact_phone,
                                :health_card,
                                :med_info,
                                :other_info,
                                :ref1,
                                :ref1_school_phone,
                                :ref1_phone,
                                :ref2,
                                :ref2_school_phone,
                                :ref2_phone,
                                :father,
                                :d_marital_status,
                                :d_occupation,
                                :d_h_phone,
                                :d_cell,
                                :d_b_phone,
                                :d_email,
                                :mother,
                                :m_marital_status,
                                :m_occupation,
                                :m_h_phone,
                                :m_cell,
                                :m_b_phone,
                                :m_email,
                                :synagogue,
                                :rabbi, :session)
  end
end
