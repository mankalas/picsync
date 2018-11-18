class AddScanToLocalDirectory < ActiveRecord::Migration[5.1]
  def change
    add_column :local_directories, :scan_id, :integer, null: true
  end
end
