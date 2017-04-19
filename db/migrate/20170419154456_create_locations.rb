class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.string :address
      t.decimal :square_footage
      t.date :opening
    end
  end
end
