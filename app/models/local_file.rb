# frozen_string_literal: true

require 'digest'
require 'exiftool'

class LocalFile < ApplicationRecord
  ELIGIBLE_EXTENSIONS = %w[jpg jpeg png bmp tiff].freeze

  validates_uniqueness_of :source

  def self.from!(file_name)
    return if File.directory?(file_name)

    extension = File.extname(file_name)[1..-1]
    return unless ELIGIBLE_EXTENSIONS.include?(extension)

    exif_data = Exiftool.new(file_name)
    create!(source: exif_data[:source_file],
            name: exif_data[:file_name],
            directory: exif_data[:directory],
            kind: "multimedia",
            size: File.size(file_name),
#            md5: Digest::MD5.hexdigest(File.read(file_name)),
            extension: extension,
            creation_time: exif_data[:date_time],
            height: exif_data[:image_height],
            width: exif_data[:image_width],
            description: exif_data[:image_description],
            orientation: exif_data[:orientation],
            model: exif_data[:model],
            file_type: exif_data[:file_type],
            mime_type: exif_data[:mime_type],
           )
  end
end
