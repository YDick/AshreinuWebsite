class Fundraiser < ApplicationRecord

    has_secure_password

    validates_length_of :password, :in => 8..20, :on => :create
  
    # devise :omniauthable, :omniauth_providers => [:google_oauth2] 

    def full_name
        "#{self.fname} #{self.lname}"
     end
    
end
