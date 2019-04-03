class SessionsController < ApplicationController
    def new
    end

    def create
        u = Fundraiser.find_by(username: params[:session][:username])

    if u && u.authenticate(params[:session][:password])
      # Put on the wristband

      session[:fundraiser_id] = u.id

    #   flash.notice = 'Access granted!'
      redirect_to root_url
    else
        # flash[:warning] = 'Email or password invalid!'
      render :new
    end
  end

  def destroy
    # Cut the wristband
    session[:fundraiser_id] = nil

    # flash[:success] = 'Successfully logged out'
    redirect_to root_url
  end

end