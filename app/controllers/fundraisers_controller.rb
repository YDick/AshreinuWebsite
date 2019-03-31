class FundraisersController < ApplicationController

    def index
      @fundraisers = Fundraiser.all
    end


    def new
        @fundraiser = Fundraiser.new 
    end

    def create
        @fundraiser = Fundraiser.new(params[:fundraiser])

        if @fundraiser.save
          flash[:notice] = "You signed up successfully"
          flash[:color]= "valid"
        else
          flash[:notice] = "Form is invalid"
          flash[:color]= "invalid"
        end
        
        render "new"
      
    end
    
end
