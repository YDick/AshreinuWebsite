class Fundraiser < ApplicationRecord

    has_secure_password


    def full_name
        "#{fname} #{lname}"
    end
    
end
