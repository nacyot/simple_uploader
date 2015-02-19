require 'dotenv'
require 'carrierwave'

Dotenv.load

module SimpleUploader
  class Config
    def self.setup_cors
    end

    def self.setup_carrierwave
      CarrierWave.configure do |config|
        config.fog_credentials = {
          provider: 'AWS',
          aws_access_key_id: ENV['AWS_ACCESS_KEY'],
          aws_secret_access_key: ENV['AWS_SECRET_KEY'],
          region: ENV['AWS_REGION']
        }

        config.fog_directory  = ENV['AWS_BUCKET']
        config.fog_public     = true
        config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
      end
    end
  end
end
