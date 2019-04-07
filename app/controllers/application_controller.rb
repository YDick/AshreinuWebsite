class ApplicationController < ActionController::Base

        protect_from_forgery with: :exception 
        

        helper_method :current_user
        
        def authenticate_user! 
           redirect_to ‘/login’ unless current_user 
        end 

        def current_user
                @current_user ||= Fundraiser.find_by(id: session[:user_id]) if session[:user_id] 
        end 

end