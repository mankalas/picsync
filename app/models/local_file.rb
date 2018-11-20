# frozen_string_literal: true

require 'digest'

class LocalFile < ApplicationRecord
  ELIGIBLE_EXTENSIONS = %w[jpg jpeg png bmp tiff].freeze

  def self.from!(file)
    extension = File.extname(file)[1..-1]
    return unless ELIGIBLE_EXTENSIONS.include?(extension)

    create!(name: File.basename(file, ".*"),
            path: File.absolute_path(file),
            kind: "multimedia",
            size: File.size(file),
            md5: Digest::MD5.hexdigest(File.read(file)),
            extension: extension
           )
  end
end
