class FundraisersController < ApplicationController

    def new
        @fundraiser = Fundraiser.new 
      end

      def create
        @fundraiser = Fundraiser.new(params[:user])
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
    
end
