class Application < ApplicationRecord
    include ActiveModel::Model
    attr_accessor :name, :email, :phone_number, :body
    # validates :name, :email, :body, presence: true
    canadian_postal_code = /\A[ABCEGHJKLMNPRSTVXY]{1}\\d{1}[A-Z]{1}[ -]?\\d{1}[A-Z]{1}\\d{1}\z/
    validates :ZIP, format: { with: canadian_postal_code }
end
