require 'sidekiq'
require 'sidekiq/web'

Sidekiq.configure_server do |config|
  config.redis = {
    url: SETTINGS[:redis][:url],
    namespace: SETTINGS[:redis][:namespace]
  }
end

Sidekiq.configure_client do |config|
  config.redis = {
    url: SETTINGS[:redis][:url],
    namespace: SETTINGS[:redis][:namespace]
  }

end

Sidekiq::Web.use(Rack::Auth::Basic) do |user, password|
  [user, password] == [SETTINGS[:sidekiq_web][:user], SETTINGS[:sidekiq_web][:passwd]]
end unless Rails.env.development?
