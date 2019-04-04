class FundraisersController < ApplicationController

    def index
      # if current_user
        @fundraisers = Fundraiser.all
        render :index
      # else
      #   flash[:warning] = "You must be logged in to see this page"
      #   redirect_to "/login"
      # end
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
end
