class HomeController < ApplicationController
    def about
    end

    def download_nightapp
        # send_file(
            # "#{Rails.root}/public/applications/Ashreinu_2019_overnight.pdf",
        #     filename: "Ashreinu Brochure 2019_overnight_in house.pdf",
        #     type: "application/pdf"
        #   )
        @overnight_app = Rails.root/public/applications/Ashreinu_2019_overnight.pdf
        redirect_to @overnight_app.attachment.path
    end
end
