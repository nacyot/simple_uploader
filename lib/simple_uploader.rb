$LOAD_PATH.unshift File.dirname(__FILE__)
require 'simple_uploader/version'

module SimpleUploader
  autoload :Server, 'simple_uploader/server'
  autoload :Configuration, 'simple_uploader/config'
end
