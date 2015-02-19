require "rack/cors"

require './lib/simple_uploader'

use Rack::Cors do
  allow do
    origins(
      /http:\/\/127\.0\.0\.1(:\d+)?/,
      /http:\/\/0\.0\.0\.0(:\d+)?/,
      /http:\/\/localhost(:\d+)?/
    )
    
    resource '/*', headers: :any
  end
end

run SimpleUploader::Server
