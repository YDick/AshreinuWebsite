class ApplicationMailer < ActionMailer::Base


  def headers
    {
      :subject => "Contact Form Inquiry",
      :to => "deepdarkdeath@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
