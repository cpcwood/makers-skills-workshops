class HelloWorldApp
  def self.call(env)
    request = Rack::Request.new(env)
    message = request.params['message'] || 'nothing!'
    path = request.path
    request_method = request.request_method

    response_string = "Hello, you sent 'message = #{message}', to #{path}, via #{request_method} request"

    response = Rack::Response.new
    response.write(response_string)
    response.finish
  end
end

class Logger

  def initialize(app) #initalized with cacher
    @app = app
  end

  def call(env)
    request = Rack::Response.new(env)
    p request.inspect
    @app.call(env)
  end
end

class Cacher

  def initialize(app)  #initalized with response
    @app = app
    @storage = []
  end

  def call(env)
    store(env)
    @app.call(env)
  end

  private

  def store(data)
    #sends data to fast storage
    @storage << data
    p 'storing data in cache'
  end
end
