class CreateConsultations < ActiveRecord::Migration[6.0]
  def change
    create_table :consultations do |table|
      table.datetime :start_time
      table.datetime :end_time
      table.string :summary
      table.string :notes

      table.timestamps
    end
  end
end
