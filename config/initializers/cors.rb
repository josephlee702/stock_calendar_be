Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    
    # this allows the backend to communicate with the front end, bypassing default CORS setting
    origins 'http://localhost:3001'
    resource '*',
    headers: :any,
    expose: ["access-token", "client", "uid"], # expose the tokens
    methods: [:get, :post, :put, :patch, :delete, :options, :head],
    credentials: true # allow cookies and auth headers
  end
end
