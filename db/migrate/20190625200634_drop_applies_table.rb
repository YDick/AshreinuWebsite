class DropAppliesTable < ActiveRecord::Migration[5.2]
    def up
      drop_table :applies
    end
  
    def down
      fail ActiveRecord::IrreversibleMigration
    end
end
