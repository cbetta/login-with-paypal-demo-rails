LoginWithPaypalDemo::Application.routes.draw do
  get "/auth/paypal/callback", to: "sessions#create"

  resource :session

  root 'sessions#show'
end
