require 'omniauth-ruesia'

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :esia,
    ENV['ESIA_ID'],
    client_options: { site: 'https://esia-portal1.test.gosuslugi.ru/aas/oauth2/v2/ac' }
end