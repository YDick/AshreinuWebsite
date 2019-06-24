class Application < ApplicationRecord
    include ActiveModel::Model
    attr_accessor :name, :email, :phone_number, :body
    # validates :name, :email, :body, presence: true
end
