class LocalDirectory < ApplicationRecord
  belongs_to :scan, required: false

  validates :path, presence: true
  validate :path_must_exist

  def path_must_exist
    errors.add(:path, "doesn't exist") if path && !Dir.exist?(path)
  end

  def scan
    Dir.foreach(path) do |f|
      LocalFile.from!(File.join(path, f))
    end
  end
end
