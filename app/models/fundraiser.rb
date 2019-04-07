class Fundraiser < ApplicationRecord

    has_secure_password

    validates_length_of :password, :in => 2..20, :on => :create
    


    def full_name
        "#{self.fname} #{self.lname}"
     end
    
end
