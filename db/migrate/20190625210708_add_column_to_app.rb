class AddColumnToApp < ActiveRecord::Migration[5.2]
  def change
    add_column :applications, :address, :string
    add_column :applications, :city, :string
    add_column :applications, :prov, :string
    add_column :applications, :ZIP, :string
    add_column :applications, :home_phone, :string
    add_column :applications, :camper_cell, :string 
    add_column :applications, :camper_email, :string
    add_column :applications, :emg_contact, :string
    add_column :applications, :emg_contact_phone, :string

    add_column :applications, :health_card, :string
    add_column :applications, :med_info, :string
    add_column :applications, :other_info, :string
    add_column :applications, :ref1, :string
    add_column :applications, :ref1_school_phone, :string
    add_column :applications, :ref1_phone, :string
    add_column :applications, :ref2, :string
    add_column :applications, :ref2_school_phone, :string
    add_column :applications, :ref2_phone, :string

    add_column :applications, :father, :string 
    add_column :applications, :d_marital_status, :string
    add_column :applications, :d_occupation, :string
    add_column :applications, :d_h_phone, :string
    add_column :applications, :d_cell, :string
    add_column :applications, :d_b_phone, :string 
    add_column :applications, :d_email, :string 


    add_column :applications, :mother, :string
    add_column :applications, :m_marital_status, :string
    add_column :applications, :m_occupation, :string
    add_column :applications, :m_h_phone, :string
    add_column :applications, :m_cell, :string
    add_column :applications, :m_b_phone, :string 
    add_column :applications, :m_email, :string 

    add_column :applications, :synagogue, :string
    add_column :applications, :rabbi, :string 
  end
end
