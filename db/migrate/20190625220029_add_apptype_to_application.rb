class AddApptypeToApplication < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :session, :string 
  end
end
