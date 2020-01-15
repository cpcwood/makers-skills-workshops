require 'rack'
require 'rack/server'

class HelloWorldApp
  def self.call(env)
    [418, {}, ['Hello world, would you like some tea?']]
  end
end

# the next line starts the server - comment out before running your tests
#Rack::Server.start(app: HelloWorldApp)
