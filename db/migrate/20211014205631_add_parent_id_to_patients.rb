class AddParentIdToPatients < ActiveRecord::Migration[6.0]
  def change
    add_column :patients, :parent_id, :integer
  end
end
