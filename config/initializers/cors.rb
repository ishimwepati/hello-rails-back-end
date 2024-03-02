Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins 'http://localhost:3001' # Update this with the actual origin of your React app
      resource '*', headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head], credentials: false
    end
  end