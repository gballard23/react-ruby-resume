class CorsMiddleware
    def initialize(app)
      @app = app
    end
  
    def call(env)
      status, headers, response = @app.call(env)
      headers['Access-Control-Allow-Origin'] = '*'
      [status, headers, response]
    end
  end