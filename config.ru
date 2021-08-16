# require will search for files in only a set of locations referred to as the "Load Path." You can view the load path by using the global variable $LOAD_PATH in a script or irb session. If it is not in the load path, it won't find it.

# Ruby 1.9 introduced require_relative which searches using the current file's location as a starting point.


# https://thoughtbot.com/upcase/videos/rack#running-via-rackup
# gem install rack
# gem install thin
puts File.expand_path(".")
$LOAD_PATH << File.expand_path("..")
require 'rackTest/hello_world'
use Middleware
# use Second
# use third
# Rack::Handler::Thin.run Middleware.new(app)

run App.new

