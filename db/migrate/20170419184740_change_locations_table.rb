class ChangeLocationsTable < ActiveRecord::Migration[5.0]
  def change
    reversible do |dir|
      change_table :locations do |t|
        dir.up {
          t.remove :address, :square_footage, :opening
          t.integer :weather
          t.string :city
        }
        dir.down {
          t.remove :city, :weather
          t.string :address
          t.decimal :square_footage
          t.date :opening
        }
      end
    end
  end
end
