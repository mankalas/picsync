class CreateLocalFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :local_files do |t|
      t.string :source
      t.string :name
      t.string :directory
      t.string :kind
      t.integer :size
      t.string :md5
      t.string :extension

      t.timestamps
    end
  end
end
