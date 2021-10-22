class AddParentIdToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :parent, :string
  end
end
