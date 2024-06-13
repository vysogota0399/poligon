Rails.application.config.middleware.use OmniAuth::Builder do
  provider :ruesia,
    ENV['ESIA_ID'],
    client_options: {
      site: 'https://esia-portal1.test.gosuslugi.ru/aas/oauth2/v2/ac',
      cms_server_url: 'http://cryptopro/sign'
    }
end