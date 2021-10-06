class ChangePatientsNameToUsername < ActiveRecord::Migration[6.0]
  def up
    add_column :patients, :username, :string

    Patient.all.each do |patient|
      patient.update(username: patient.name)
    end

    remove_column :patients, :name
  end

  def down
    add_column :patients, :name, :string

    Patient.all.each do |patient|
      patient.update(name: patient.username)
    end

    remove_column :patients, :username, :string
  end
end
