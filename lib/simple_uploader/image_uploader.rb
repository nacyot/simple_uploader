require 'carrierwave'

module SimpleUploader
  class ImageUploader < CarrierWave::Uploader::Base
    storage :fog

    def filename
      "#{SecureRandom.uuid}.#{file.extension}"
    end
  end
end
