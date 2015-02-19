require 'json'
require 'sinatra'
require 'sinatra/reloader'

require 'simple_uploader/config'
require 'simple_uploader/image_uploader'

module SimpleUploader
  SimpleUploader::Config.setup_carrierwave

  class Server < Sinatra::Application
    options '/*' do
    end

    get '/' do
      'Simple Image Uploader!'
    end

    get 'ping' do
      'true'
    end

    post '/upload' do
      uploader = ImageUploader.new
      uploader.store!(params[:file][:tempfile])
      return { filename: uploader.url }.to_json
    end
  end
end
