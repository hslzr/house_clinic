class CreateMedicines < ActiveRecord::Migration[6.0]
  def change
    create_table :medicines do |t|
      t.string :name
      t.string :brand
      t.string :unit

      t.timestamps
    end
  end
end
