class CreateScans < ActiveRecord::Migration[5.1]
  def change
    create_table :scans do |t|
      t.integer :status

      t.timestamps
    end
  end
end
