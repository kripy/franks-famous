require './app'
use Rack::Deflater
run App.new
