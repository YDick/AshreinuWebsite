class CreateFundraisers < ActiveRecord::Migration[5.2]
  def change
    create_table :fundraisers do |t|
      t.string :fname
      t.string :lname
      t.string :address
      t.string :city
      t.string :provence
      t.string :ZIP
      t.string :country
      t.integer :phone
      t.integer :cell
      t.string :email
      t.string :username
      t.string :password
      t.integer :goal
      t.text :summary
      t.string :photo_main
      t.string :photo_banner
      t.float :amount_raised
      t.string :how_heard

      t.timestamps
    end
  end
end
