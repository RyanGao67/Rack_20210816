# require "rack"
class App 
  def call(env)
    sleep 3
    [200, {"content-Type" => "text/plain"}, ["hello world"]]
  end
end

class Middleware
  def initialize(app)
    @app = app 
  end
  def call(env)
    before = Time.now.to_i
    status, headers, body = @app.call(env)

    after = Time.now.to_i
    log_message = "App took #{after-before} seconds"
    [status, headers, body << log_message]
  end
end

# use Middleware
# use Second
# use third
# Rack::Handler::Thin.run Middleware.new(app)

# run app
