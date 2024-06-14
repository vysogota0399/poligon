Rails.application.config.middleware.use OmniAuth::Builder do
  provider :ruesia,
    ENV['ESIA_ID'],
    scope: 'openid fullname',
    csp_server_url: 'http://csp_server:3037/cryptopro/sign',
    cer_path: "#{Rails.root}/config/keys/esia.cer",
    client_options: {
      site: 'https://esia-portal1.test.gosuslugi.ru/',
      authorize_url: 'aas/oauth2/v2/ac',
      token_url: 'aas/oauth2/v2/te',
    }
end
