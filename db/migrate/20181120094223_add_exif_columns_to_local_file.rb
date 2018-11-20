class AddExifColumnsToLocalFile < ActiveRecord::Migration[5.1]
  def change
    add_column :local_files, :creation_time, :time
    add_column :local_files, :height, :integer
    add_column :local_files, :width, :integer
    add_column :local_files, :description, :string
    add_column :local_files, :orientation, :integer
    add_column :local_files, :model, :string
    add_column :local_files, :file_type, :string
    add_column :local_files, :mime_type, :string
  end
end
