class CreateLocalDirectories < ActiveRecord::Migration[5.1]
  def change
    create_table :local_directories do |t|
      t.string :path

      t.timestamps
    end
  end
end
