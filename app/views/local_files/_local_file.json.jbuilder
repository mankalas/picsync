json.extract! local_file, :id, :name, :path, :type, :size, :md5, :extension, :created_at, :updated_at
json.url local_file_url(local_file, format: :json)
