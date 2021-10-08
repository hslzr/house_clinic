class AddRelationshipsToConsultations < ActiveRecord::Migration[6.0]
  def change
    add_reference :consultations, :patient, null: false, foreign_key: true
    add_reference :consultations, :doctor, null: false, foreign_key: true
  end
end
