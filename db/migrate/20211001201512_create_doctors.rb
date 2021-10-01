class CreateDoctors < ActiveRecord::Migration[6.0]
  def change
    create_table :doctors do |t|
      t.string :name
      t.integer :license_number
      t.string :specialty

      t.timestamps
    end
  end
end
