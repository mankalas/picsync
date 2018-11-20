class CreateLocalFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :local_files do |t|
      t.string :name
      t.string :path
      t.string :kind
      t.string :size
      t.string :md5
      t.string :extension

      t.timestamps
    end
  end
end
