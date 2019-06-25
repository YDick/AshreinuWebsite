class AddColumnToApplications < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :firstname, :string
    add_column :applications, :lastname, :string
    add_column :applications, :hebname, :string
    add_column :applications, :DOB, :date
    add_column :applications, :place_of_birth, :string
    add_column :applications, :age, :float  
    add_column :applications, :grade, :string
    add_column :applications, :school, :string
  end
end
