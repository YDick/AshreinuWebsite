class SessionsController < ApplicationController
    def new
    end

    # 
    def create
        u = Fundraiser.find_by(username: params[:session][:username])

    if u && u.authenticate(params[:session][:password])
      # Put on the wristband

      session[:user_id] = u.id
      redirect_to root_url, notice: "Logged in"
    else
        # flash[:warning] = 'Email or password invalid!'
        flash.now.alert = "Email or password is invalid."
        render :new
    end
  end

  def destroy
    # Cut the wristband
    session[:user_id] = nil

    flash[:success] = 'Successfully logged out'
    redirect_to root_url
  end

end