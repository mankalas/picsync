require 'find'

class LocalDirectory < ApplicationRecord
  belongs_to :scan, required: false

  validates :path, presence: true
  validate :path_must_exist

  def path_must_exist
    errors.add(:path, "doesn't exist") if path && !Dir.exist?(path)
  end

  def scan
    Find.find(path) do |f|
      LocalFile.from!(f)
    end
  end
end
