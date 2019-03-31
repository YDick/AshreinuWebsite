class FundraisersController < ApplicationController

    def index
      @fundraisers = Fundraiser.all
    end


    def new
        @fundraiser = Fundraiser.new 
    end

    def create
        @fundraiser = Fundraiser.new(fundraiser_params)

        if @fundraiser.save
          flash[:notice] = "You signed up successfully"
          flash[:color]= "valid"
        else
          flash[:notice] = "Form is invalid"
          flash[:color]= "invalid"
        end

        render "new"
      
    end
    

    private
    def fundraiser_params
      params.require(:fundraiser).permit(:email, :username, :password)
    end
end
