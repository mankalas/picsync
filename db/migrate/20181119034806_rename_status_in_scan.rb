class RenameStatusInScan < ActiveRecord::Migration[5.1]
  def change
    change_column :scans, :status, :string
    rename_column :scans, :status, :aasm_state
  end
end
