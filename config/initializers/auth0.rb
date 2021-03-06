Rails.application.config.middleware.use OmniAuth::Builder do
  provider(
    :auth0,
    Rails.application.credentials.dig(:auth0_client_id),
    Rails.application.credentials.dig(:auth0_secret_key),
    Rails.application.credentials.dig(:auth0_domain),
    callback_path: '/auth/auth0/callback',
    authorize_params: {
      scope: 'openid email profile'
    }
  )
end