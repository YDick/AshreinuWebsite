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
          # flash[:notice] = "You signed up successfully"
          # flash[:color]= "valid"
          redirect_to fundraisers_url
        else
          # flash[:notice] = "Form is invalid"
          # flash[:color]= "invalid"
          render "new"
        end
        return @fundraiser.errors.full_messages
      
    end
    

    private
    def fundraiser_params
      params.require(:fundraiser).permit(:fname, :lname, :email, :username, :password)
    end
end
