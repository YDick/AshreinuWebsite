class FundraisersController < ApplicationController

  before_action :require_login, except: [:index, :new, :create, :show]
  before_action :require_ownership, only: [:edit, :update, :destroy]

    def index
        @fundraisers = Fundraiser.all
    end

    def show
      @fundraiser = Fundraiser.find(params[:id])
    end


    def new
        @fundraiser = Fundraiser.new 
    end

    def create
        @fundraiser = Fundraiser.new(fundraiser_params)

        if @fundraiser.save
          session[:fundraiser_id] = @fundraiser.id #to login fundie
          flash[:notice] = "You signed up successfully"
          flash[:color]= "valid"
          redirect_to fundraisers_url
        else
          flash[:notice] = "Form is invalid"
          flash[:color]= "invalid"
          render "new"
        end
          return @fundraiser.errors.full_messages
    end
    
    def edit 
      @fundraiser = Fundraiser.find(params[:id])
    end

    def update
      @fundraiser = Fundraiser.find(params[:id])

      if @fundraiser.update_attributes(fundraiser_params)
        redirect_to fundraiser_url(@fundraiser)
 
      else
          render :edit
      end
    end


    private
    def fundraiser_params
      params.require(:fundraiser).permit(:fname, :lname, :email, :username, :password)
    end

    def require_login
      unless session[:user_id]
        flash[:error] = "You must be logged in to access this section"
        redirect_to new_session_path
      end
    end

    def require_ownership
      @fundraiser = Fundraiser.find(params[:id])

      unless @fundraiser == current_user
        flash[:error] = "You are not the correct user"
        redirect_to root_path
      end
    end


end
