Rails.application.config.middleware.use OmniAuth::Builder do
  provider :paypal, "client_id", "secret", sandbox: true, scope: "openid email profile"
end

# OmniAuth.config.test_mode = true

OmniAuth.config.mock_auth[:paypal] =  OmniAuth::AuthHash.new({
  provider: "paypal",
  uid: "12345",
  info: {
    name: "John Doe",
    email: "john@example.com"
  }
})