class AddOmniauthToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :fundraisers, :provider, :string
    add_column :fundraisers, :token, :string
    add_column :fundraisers, :expires_at, :string
    add_column :fundraisers, :expires, :boolean
    add_column :fundraisers, :refresh_token, :string
  end
end
